// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package o_auth2_0_extension

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"fmt"
	"io"
	"io/ioutil"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
)

// GenerateTokenByNewHeadlessAccountV3Reader is a Reader for the GenerateTokenByNewHeadlessAccountV3 structure.
type GenerateTokenByNewHeadlessAccountV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GenerateTokenByNewHeadlessAccountV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGenerateTokenByNewHeadlessAccountV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v3/headless/token returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGenerateTokenByNewHeadlessAccountV3OK creates a GenerateTokenByNewHeadlessAccountV3OK with default headers values
func NewGenerateTokenByNewHeadlessAccountV3OK() *GenerateTokenByNewHeadlessAccountV3OK {
	return &GenerateTokenByNewHeadlessAccountV3OK{}
}

/*GenerateTokenByNewHeadlessAccountV3OK handles this case with default header values.

  Succeed to create headless account and response token info.
*/
type GenerateTokenByNewHeadlessAccountV3OK struct {
	Payload *iamclientmodels.OauthmodelTokenResponseV3
}

func (o *GenerateTokenByNewHeadlessAccountV3OK) Error() string {
	return fmt.Sprintf("[POST /iam/v3/headless/token][%d] generateTokenByNewHeadlessAccountV3OK  %+v", 200, o.Payload)
}

func (o *GenerateTokenByNewHeadlessAccountV3OK) GetPayload() *iamclientmodels.OauthmodelTokenResponseV3 {
	return o.Payload
}

func (o *GenerateTokenByNewHeadlessAccountV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(iamclientmodels.OauthmodelTokenResponseV3)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
