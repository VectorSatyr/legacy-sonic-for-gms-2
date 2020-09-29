/// @description  Dequeue
with (next)
{
    previous = other.previous;
}
with (previous)
{
    next = other.next;
    y += (string_height(text) + separation);
}