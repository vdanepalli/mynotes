## Third Edition

### Foundations

`pd.Series` - 1D, column. Homogenous. 
`pd.DataFrame` - 2D. Collection of `pd.Series`
`pd.Index`


To construct: `pd.Series(data_sequence - tuple/list)`

```py
pd.Series(range(3), dtype="int8")
pd.Series(["apple", "banana", "orange"], name="fruit")

# DF using List of Lists
pd.DataFrame([
    [1, 2],
    [4, 8],
], columns=["col_a", "col_b"])

# DF using dictionary
pd.DataFrame({
    "first_name": ["Jane", "John"],
    "last_name": ["Doe", "Smith"],
})

ser1 = pd.Series(range(3), dtype="int8", name="int8_col")
ser2 = pd.Series(range(3), dtype="int16", name="int16_col")
pd.DataFrame({ser1.name: ser1, ser2.name: ser2})
```

Pandas creates a auto-numbered `pd.Index` - technically, `pd.RangeIndex`

```py
# rows have names instead of numbers 0-2
pd.Series([4, 4, 2], index=["dog", "cat", "human"])

# You can give name to index as well
index = pd.Index(["dog", "cat", "human"], name="animal")
pd.Series([4, 4, 2], name="num_legs", index=index)

pd.DataFrame([
    [24, 180],
    [42, 166],
], columns=["age", "height_cm"], index=["Jack", "Jill"])
```

`pd.Series.dtype` gives the type of data. 
`pd.Series.name` gives the name of the series. 