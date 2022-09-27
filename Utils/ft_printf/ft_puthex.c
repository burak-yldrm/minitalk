#include "ft_printf.h"

void	ft_puthex(unsigned long long a)
{
	if (a >= 16)
	{
		ft_puthex(a / 16);
		ft_puthex(a % 16);
	}
	else
	{
		if (a <= 9)
			ft_putchar(a + '0');
		else
			ft_putchar((a - 10) + 'a');
	}
}
