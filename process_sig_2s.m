% 文件夹路径
%clean_folder = 'F:\2-科研\论文写作\LINKnet实验\processed_2s\processed_clean_testset_wav';
noisy_folder = 'F:\2-科研\论文写作\LINKnet实验\enhanced_signals_unet3plus\enhanced_signals_unet+++_4s';

% 获取文件夹中的所有音频文件
%clean_files = dir(fullfile(clean_folder, '*.wav'));
noisy_files = dir(fullfile(noisy_folder, '*.wav'));

% 定义要保留的前2秒的采样率
fs = 16000; % 假设音频的采样率为16000Hz
duration = 4; % 要保留的时间长度为2秒

% % 处理干净的音频文件
% for i = 1:length(clean_files)
%     file_path = fullfile(clean_folder, clean_files(i).name);
%     [y, Fs] = audioread(file_path);
%     
%     % 计算需要保留的样本数
%     num_samples = duration * Fs;
%     
%     % 截取前2秒
%     if length(y) > num_samples
%         y = y(1:num_samples, :);
%     end
%     
%     % 保存处理后的音频文件
%     audiowrite(file_path, y, Fs);
% end

% 处理带噪音的音频文件
for i = 1:length(noisy_files)
    file_path = fullfile(noisy_folder, noisy_files(i).name);
    [y, Fs] = audioread(file_path);
    
    % 计算需要保留的样本数
    num_samples = duration * Fs;
    
    % 截取前2秒
    if length(y) > num_samples
        y = y(1:num_samples, :);
    end
    
    % 保存处理后的音频文件
    audiowrite(file_path, y, Fs);
end
