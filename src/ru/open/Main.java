package ru.open;

import java.io.*;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Scanner;

public class Main {
    private final static String OUT_PATH="";
    private final static String OUT_NAME = "outOrder5.cvs";
    private final static String IN_NAME = "order5.csv";
    private final static String IN_CONFIG = "inputs_.csv";

    public static void main(String[] args) {
        try {
            FileInputStream fis = new FileInputStream(IN_CONFIG);
            Double[] inputs = makeInputs(1000000, dictInputs(new Scanner(fis)));
            fis.close();
            fis = new FileInputStream(IN_NAME);
            ArrayList<? extends List> params = dictInputs(new Scanner(fis));
            Integer[] outputs =  makeOutputs(inputs, params);
            writeResult(inputs, outputs);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private static void writeResult(Double[] inputs, Integer[] outputs) throws IOException {
        File file = new File(OUT_PATH+OUT_NAME);
        file.createNewFile();
            FileOutputStream fos = new FileOutputStream(file,false);
            byte[] endOfline = System.getProperty("line.separator").getBytes();
            fos.write("input,output".getBytes());
            fos.write(endOfline);
            int i=0;
            for (Double input:inputs){
                StringBuilder sb = new StringBuilder();
                sb.append(input).append(",").append(outputs[i++]);
                fos.write(sb.toString().getBytes());
                fos.write(endOfline);
            }
            fos.close();
    }

    private static Integer[] makeOutputs(Double[] inputs, ArrayList<? extends List> params) {
        Integer[] outputs = new Integer[inputs.length];
        Double[] integrators = new Double[params.size()+1];
        initIntegrators(integrators, params);
        Double[] _integrators = Arrays.copyOf( integrators, integrators.length);
        int comparator = sign(_integrators[_integrators.length - 1]);
        for (int i=0; i<outputs.length; i++) {
            _integrators[0] = inputs[i];
            int j=0;
            for (List<Double> order: params) {
                integrators[j+1] = order.get(0) * _integrators[j] - order.get(1)*comparator + order.get(2)*integrators[j+1];
                j++;
            }
            _integrators = Arrays.copyOf( integrators, integrators.length);
            comparator = sign(integrators[integrators.length - 1]);
            outputs[i] = comparator;
//                System.out.format("%10.16f %d%n",_integrators[_integrators.length - 1], comparator);
        }
        return outputs;
    }

    private static void initIntegrators(Double[] integrators, ArrayList<? extends List> params) {
        int i = 1;
        for (List order: params) {
            integrators[i++] = (Double) order.get(3);
        }
    }

    private static int sign(Double in) {
        return in>0 ? 1:-1;
    }


    private static Double[] makeInputs(int len, ArrayList<? extends List> dictInputs) {
        Double[] inputs =  new Double[len];
        for (int i=0; i<inputs.length; i++) {
            inputs[i] = 0.0;
            for (List<Double> input : dictInputs)
                inputs[i] += input.get(0)*Math.sin(input.get(1)*i + input.get(2));
//            System.out.format("%10.16f%n",inputs[i]);
        }
        return inputs;
    }

    private static ArrayList<? extends List> dictInputs(Scanner scanner) {
        boolean isData = false;
        ArrayList dictInputs = new ArrayList();
        while (scanner.hasNext()) {
            String next = scanner.next();
            if (isData) {
                dictInputs.add(inputs(next));
            }
            isData = true;
        }
        return dictInputs;
    }

    private static ArrayList<Double> inputs(String row) {
        String[] inputs = row.split(",");
        ArrayList<Double> _inputs = new ArrayList<>();
        for (String input : inputs)
            _inputs.add(Double.valueOf(input));
        return _inputs;
    }
}


