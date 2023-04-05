/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_substr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tafocked <tafocked@student.s19.be>         +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/04/05 12:42:46 by tafocked          #+#    #+#             */
/*   Updated: 2023/04/05 12:50:20 by tafocked         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

/*
	Allocates and returns a substring from the string ’s’.
	The substring begins at index ’start’ and is of maximum size ’len’.
*/

#include "libft.h"

char	*ft_substr(const char *str, size_t start, size_t len)
{
	char	*substr;
	size_t	i;

	if (!str)
		return (0);
	i = ft_strlen(str);
	if (len + start > i)
		len = i - start;
	if (start > i)
	{
		substr = malloc(sizeof(char));
		substr[0] = '\0';
		return (substr);
	}
	substr = malloc((len + 1) * sizeof(char));
	if (!substr)
		return (0);
	i = 0;
	while (i < len && str[start + i] != '\0')
	{
		substr[i] = str[start + i];
		i++;
	}
	substr[i] = '\0';
	return (substr);
}
