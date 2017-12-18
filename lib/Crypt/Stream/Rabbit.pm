package Crypt::Stream::Rabbit;

use strict;
use warnings;
our $VERSION = '0.055_002';

use CryptX;

1;

=pod

=head1 NAME

Crypt::Stream::Rabbit - Stream cipher Rabbit

=head1 SYNOPSIS

   use Crypt::Stream::Rabbit;

   # encrypt
   $key = "1234567890123456";
   $iv  = "123456789012";
   $stream = Crypt::Stream::Rabbit->new($key, $iv);
   $ct = $stream->crypt("plain message");

   # decrypt
   $key = "1234567890123456";
   $iv  = "123456789012";
   $stream = Crypt::Stream::Rabbit->new($key, $iv);
   $pt = $stream->crypt($ct);

=head1 DESCRIPTION

Provides an interface to the Rabbit stream cipher.

=head1 METHODS

=head2 new

 $stream = Crypt::Stream::Rabbit->new($key, $iv);
 # $key .. keylen must be multiple of 4 bytes
 # $iv  .. ivlen must be multiple of 4 bytes (OPTIONAL)

=head2 crypt

 $ciphertext = $stream->crypt($plaintext);
 #or
 $plaintext = $stream->crypt($ciphertext);

=head2 keystream

 $random_key = $stream->keystream($length);

=head2 clone

 $stream->clone();

=head1 SEE ALSO

=over

=item * L<Crypt::Stream::RC4>, L<Crypt::Stream::ChaCha>, L<Crypt::Stream::Salsa20>, L<Crypt::Stream::Sober128>

=item * L<https://en.wikipedia.org/wiki/Rabbit_(cipher)>

=back

=cut
