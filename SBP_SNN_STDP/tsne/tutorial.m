function [ output_args ] = tnethomas( input_args )
%TNETHOMAS �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��

% Load data
load layer2_all
load mnist_test
for i =1:1:5
    train_x = layer2_all{i};
    train_labels=test_labels;
    
    % Set parameters
    no_dims = 2;%ѹ�����ά��
    initial_dims = 50;%PCA��ά�������� tsne ����֮ǰ�����Զ�ʹ�� PCA ������Ԥ������ԭʼ��������ά�Ƚ��ͣ�
    perplexity = 30; %��˹�ֲ���perplexity��Խ�Ǹ��ܶȵ���������ֵԽ��һ���Ƽ�5-50
    % Run t-SNE
    mappedX = tsne(train_x, [], no_dims, initial_dims, perplexity);
    % Plot results
    gscatter(mappedX(:,1), mappedX(:,2),train_labels); %train_labels���ɲ�ͬ�ı�ǩ��ɫ
end

end

