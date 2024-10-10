// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package o_auth2_0

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

// SimultaneousLoginV3Reader is a Reader for the SimultaneousLoginV3 structure.
type SimultaneousLoginV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *SimultaneousLoginV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewSimultaneousLoginV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewSimultaneousLoginV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewSimultaneousLoginV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewSimultaneousLoginV3Conflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewSimultaneousLoginV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v3/oauth/simultaneousLogin returns an error %d: %s", response.Code(), string(data))
	}
}

// NewSimultaneousLoginV3OK creates a SimultaneousLoginV3OK with default headers values
func NewSimultaneousLoginV3OK() *SimultaneousLoginV3OK {
	return &SimultaneousLoginV3OK{}
}

/*SimultaneousLoginV3OK handles this case with default header values.

  Token returned.
*/
type SimultaneousLoginV3OK struct {
	Payload *iamclientmodels.OauthmodelTokenResponseV3
}

func (o *SimultaneousLoginV3OK) Error() string {
	return fmt.Sprintf("[POST /iam/v3/oauth/simultaneousLogin][%d] simultaneousLoginV3OK  %+v", 200, o.ToJSONString())
}

func (o *SimultaneousLoginV3OK) ToJSONString() string {
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

func (o *SimultaneousLoginV3OK) GetPayload() *iamclientmodels.OauthmodelTokenResponseV3 {
	return o.Payload
}

func (o *SimultaneousLoginV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewSimultaneousLoginV3BadRequest creates a SimultaneousLoginV3BadRequest with default headers values
func NewSimultaneousLoginV3BadRequest() *SimultaneousLoginV3BadRequest {
	return &SimultaneousLoginV3BadRequest{}
}

/*SimultaneousLoginV3BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10216</td><td>Native ticket is required</td></tr></table>
*/
type SimultaneousLoginV3BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *SimultaneousLoginV3BadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/v3/oauth/simultaneousLogin][%d] simultaneousLoginV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *SimultaneousLoginV3BadRequest) ToJSONString() string {
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

func (o *SimultaneousLoginV3BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *SimultaneousLoginV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewSimultaneousLoginV3Unauthorized creates a SimultaneousLoginV3Unauthorized with default headers values
func NewSimultaneousLoginV3Unauthorized() *SimultaneousLoginV3Unauthorized {
	return &SimultaneousLoginV3Unauthorized{}
}

/*SimultaneousLoginV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type SimultaneousLoginV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *SimultaneousLoginV3Unauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/v3/oauth/simultaneousLogin][%d] simultaneousLoginV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *SimultaneousLoginV3Unauthorized) ToJSONString() string {
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

func (o *SimultaneousLoginV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *SimultaneousLoginV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewSimultaneousLoginV3Conflict creates a SimultaneousLoginV3Conflict with default headers values
func NewSimultaneousLoginV3Conflict() *SimultaneousLoginV3Conflict {
	return &SimultaneousLoginV3Conflict{}
}

/*SimultaneousLoginV3Conflict handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10215</td><td>Simultaneous ticket is required</td></tr><tr><td>10220</td><td>Native ticket's account linked AGS account is different with the one which simultaneous ticket's linked to</td></tr><tr><td>10219</td><td>Native ticket's account linked AGS is already linked simultaneous but different with the input simultaneous ticket's</td></tr><tr><td>10217</td><td>Native ticket's account linked AGS account has different linking history with input simultaneous ticket's</td></tr><tr><td>10221</td><td>Simultaneous ticket's account linked AGS is already linked native but different with the input native ticket's</td></tr><tr><td>10218</td><td>Simultaneous ticket's account linked AGS account has different linking history with input native ticket's</td></tr></table>
*/
type SimultaneousLoginV3Conflict struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *SimultaneousLoginV3Conflict) Error() string {
	return fmt.Sprintf("[POST /iam/v3/oauth/simultaneousLogin][%d] simultaneousLoginV3Conflict  %+v", 409, o.ToJSONString())
}

func (o *SimultaneousLoginV3Conflict) ToJSONString() string {
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

func (o *SimultaneousLoginV3Conflict) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *SimultaneousLoginV3Conflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewSimultaneousLoginV3InternalServerError creates a SimultaneousLoginV3InternalServerError with default headers values
func NewSimultaneousLoginV3InternalServerError() *SimultaneousLoginV3InternalServerError {
	return &SimultaneousLoginV3InternalServerError{}
}

/*SimultaneousLoginV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type SimultaneousLoginV3InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *SimultaneousLoginV3InternalServerError) Error() string {
	return fmt.Sprintf("[POST /iam/v3/oauth/simultaneousLogin][%d] simultaneousLoginV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *SimultaneousLoginV3InternalServerError) ToJSONString() string {
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

func (o *SimultaneousLoginV3InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *SimultaneousLoginV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
