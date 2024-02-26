// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package o_auth2_0_v4

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

// SimultaneousLoginV4Reader is a Reader for the SimultaneousLoginV4 structure.
type SimultaneousLoginV4Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *SimultaneousLoginV4Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewSimultaneousLoginV4OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 202:
		result := NewSimultaneousLoginV4Accepted()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewSimultaneousLoginV4BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewSimultaneousLoginV4Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewSimultaneousLoginV4Conflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewSimultaneousLoginV4InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v4/oauth/simultaneousLogin returns an error %d: %s", response.Code(), string(data))
	}
}

// NewSimultaneousLoginV4OK creates a SimultaneousLoginV4OK with default headers values
func NewSimultaneousLoginV4OK() *SimultaneousLoginV4OK {
	return &SimultaneousLoginV4OK{}
}

/*SimultaneousLoginV4OK handles this case with default header values.

  Token returned.
*/
type SimultaneousLoginV4OK struct {
	Payload *iamclientmodels.OauthmodelTokenResponseV3
}

func (o *SimultaneousLoginV4OK) Error() string {
	return fmt.Sprintf("[POST /iam/v4/oauth/simultaneousLogin][%d] simultaneousLoginV4OK  %+v", 200, o.ToJSONString())
}

func (o *SimultaneousLoginV4OK) ToJSONString() string {
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

func (o *SimultaneousLoginV4OK) GetPayload() *iamclientmodels.OauthmodelTokenResponseV3 {
	return o.Payload
}

func (o *SimultaneousLoginV4OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewSimultaneousLoginV4Accepted creates a SimultaneousLoginV4Accepted with default headers values
func NewSimultaneousLoginV4Accepted() *SimultaneousLoginV4Accepted {
	return &SimultaneousLoginV4Accepted{}
}

/*SimultaneousLoginV4Accepted handles this case with default header values.

  Login ticket returned.
*/
type SimultaneousLoginV4Accepted struct {
	Payload *iamclientmodels.OauthmodelLoginQueueTicketResponse
}

func (o *SimultaneousLoginV4Accepted) Error() string {
	return fmt.Sprintf("[POST /iam/v4/oauth/simultaneousLogin][%d] simultaneousLoginV4Accepted  %+v", 202, o.ToJSONString())
}

func (o *SimultaneousLoginV4Accepted) ToJSONString() string {
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

func (o *SimultaneousLoginV4Accepted) GetPayload() *iamclientmodels.OauthmodelLoginQueueTicketResponse {
	return o.Payload
}

func (o *SimultaneousLoginV4Accepted) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.OauthmodelLoginQueueTicketResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewSimultaneousLoginV4BadRequest creates a SimultaneousLoginV4BadRequest with default headers values
func NewSimultaneousLoginV4BadRequest() *SimultaneousLoginV4BadRequest {
	return &SimultaneousLoginV4BadRequest{}
}

/*SimultaneousLoginV4BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10216</td><td>Native ticket is required</td></tr></table>
*/
type SimultaneousLoginV4BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *SimultaneousLoginV4BadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/v4/oauth/simultaneousLogin][%d] simultaneousLoginV4BadRequest  %+v", 400, o.ToJSONString())
}

func (o *SimultaneousLoginV4BadRequest) ToJSONString() string {
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

func (o *SimultaneousLoginV4BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *SimultaneousLoginV4BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewSimultaneousLoginV4Unauthorized creates a SimultaneousLoginV4Unauthorized with default headers values
func NewSimultaneousLoginV4Unauthorized() *SimultaneousLoginV4Unauthorized {
	return &SimultaneousLoginV4Unauthorized{}
}

/*SimultaneousLoginV4Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type SimultaneousLoginV4Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *SimultaneousLoginV4Unauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/v4/oauth/simultaneousLogin][%d] simultaneousLoginV4Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *SimultaneousLoginV4Unauthorized) ToJSONString() string {
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

func (o *SimultaneousLoginV4Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *SimultaneousLoginV4Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewSimultaneousLoginV4Conflict creates a SimultaneousLoginV4Conflict with default headers values
func NewSimultaneousLoginV4Conflict() *SimultaneousLoginV4Conflict {
	return &SimultaneousLoginV4Conflict{}
}

/*SimultaneousLoginV4Conflict handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10215</td><td>Simultaneous ticket is required</td></tr><tr><td>10220</td><td>Native ticket's account linked AGS account is different with the one which simultaneous ticket's linked to</td></tr><tr><td>10219</td><td>Native ticket's account linked AGS is already linked simultaneous but different with the input simultaneous ticket's</td></tr><tr><td>10217</td><td>Native ticket's account linked AGS account has different linking history with input simultaneous ticket's</td></tr><tr><td>10221</td><td>Simultaneous ticket's account linked AGS is already linked native but different with the input native ticket's</td></tr><tr><td>10218</td><td>Simultaneous ticket's account linked AGS account has different linking history with input native ticket's</td></tr></table>
*/
type SimultaneousLoginV4Conflict struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *SimultaneousLoginV4Conflict) Error() string {
	return fmt.Sprintf("[POST /iam/v4/oauth/simultaneousLogin][%d] simultaneousLoginV4Conflict  %+v", 409, o.ToJSONString())
}

func (o *SimultaneousLoginV4Conflict) ToJSONString() string {
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

func (o *SimultaneousLoginV4Conflict) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *SimultaneousLoginV4Conflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewSimultaneousLoginV4InternalServerError creates a SimultaneousLoginV4InternalServerError with default headers values
func NewSimultaneousLoginV4InternalServerError() *SimultaneousLoginV4InternalServerError {
	return &SimultaneousLoginV4InternalServerError{}
}

/*SimultaneousLoginV4InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type SimultaneousLoginV4InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *SimultaneousLoginV4InternalServerError) Error() string {
	return fmt.Sprintf("[POST /iam/v4/oauth/simultaneousLogin][%d] simultaneousLoginV4InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *SimultaneousLoginV4InternalServerError) ToJSONString() string {
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

func (o *SimultaneousLoginV4InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *SimultaneousLoginV4InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
