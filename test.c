#include "libft.h"
#include <stdio.h>

int main(void)
{

	char *str1 = "coucou";
	char *str2;

	str2 = ft_strdup(str1);
	printf("%s", str2);
}