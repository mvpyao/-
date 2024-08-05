% 设置文件夹路径
enhanced_folder = 'F:\2-科研\论文写作\LINKnet实验\enhanced_signals_unet3plus\enhanced_signals_unet+++_4s';
clean_folder = 'F:\2-科研\论文写作\LINKnet实验\processed_4s\processed_clean_testset_wav';

% 调用 evaluate_all 函数计算所有指标
[Csig, Cbak, Cvol, Pesq, SNR, SegSNR] = evaluate_all(clean_folder, enhanced_folder);

% 输出结果
fprintf('CSIG: %.4f\n', Csig);
fprintf('CBAK: %.4f\n', Cbak);
fprintf('CVOL: %.4f\n', Cvol);
fprintf('PESQ: %.4f\n', Pesq);
fprintf('SNR: %.4f\n', SNR);
fprintf('SegSNR: %.4f\n', SegSNR);
