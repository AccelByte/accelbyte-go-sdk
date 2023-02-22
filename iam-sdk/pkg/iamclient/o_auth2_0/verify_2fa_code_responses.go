// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package o_auth2_0

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
)

// Verify2FACodeReader is a Reader for the Verify2FACode structure.
type Verify2FACodeReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *Verify2FACodeReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewVerify2faCodeOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewVerify2faCodeUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v3/oauth/mfa/verify returns an error %d: %s", response.Code(), string(data))
	}
}

// NewVerify2faCodeOK creates a Verify2faCodeOK with default headers values
func NewVerify2faCodeOK() *Verify2faCodeOK {
	return &Verify2faCodeOK{}
}

/*
Verify2faCodeOK handles this case with default header values.

	Token returned
*/
type Verify2faCodeOK struct {
	Payload *iamclientmodels.OauthmodelTokenResponseV3
}

func (o *Verify2faCodeOK) Error() string {
	return fmt.Sprintf("[POST /iam/v3/oauth/mfa/verify][%d] verify2faCodeOK  %+v", 200, o.ToJSONString())
}

func (o *Verify2faCodeOK) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *Verify2faCodeOK) GetPayload() *iamclientmodels.OauthmodelTokenResponseV3 {
	return o.Payload
}

func (o *Verify2faCodeOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.OauthmodelTokenResponseV3)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewVerify2faCodeUnauthorized creates a Verify2faCodeUnauthorized with default headers values
func NewVerify2faCodeUnauthorized() *Verify2faCodeUnauthorized {
	return &Verify2faCodeUnauthorized{}
}

/*
Verify2faCodeUnauthorized handles this case with default header values.

	Unauthorized
*/
type Verify2faCodeUnauthorized struct {
	Payload *iamclientmodels.OauthmodelErrorResponse
}

func (o *Verify2faCodeUnauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/v3/oauth/mfa/verify][%d] verify2faCodeUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *Verify2faCodeUnauthorized) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *Verify2faCodeUnauthorized) GetPayload() *iamclientmodels.OauthmodelErrorResponse {
	return o.Payload
}

func (o *Verify2faCodeUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.OauthmodelErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}