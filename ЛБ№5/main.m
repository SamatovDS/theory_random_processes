r = 0.09;
sigma_x = 0.4;
tau = 0.5;

mu_r = mu - r;
X = H^(-1) * transpose(mu_r) / (2 * tau);

S = X / sum(X);

mu_s = mu * S;

sigma_s = (transpose(S) * H * S)^0.5;
alpha_0 = 1 - sigma_x / sigma_s;
mu_x = alpha_0 * r + (1 - alpha_0) * mu_s;

