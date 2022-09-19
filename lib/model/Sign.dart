class Sign {
  final String _signName;
  final String _signDate;
  final String _signDetail;
  final String _signSmallPic;
  final String _signBigPic;
  
  get signName => this._signName;

  get signDate => this._signDate;

  get signDetail => this._signDetail;

  get signSmallPic => this._signSmallPic;

  get signBigPic => this._signBigPic;


  Sign(this._signName, this._signDate, this._signDetail, this._signSmallPic,
      this._signBigPic);

  

  @override
  String toString() {
    return '$_signName - $_signBigPic';
   // sdsaljjashjd
  }
}
