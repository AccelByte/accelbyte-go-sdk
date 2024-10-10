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

// Change2FAMethodReader is a Reader for the Change2FAMethod structure.
type Change2FAMethodReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *Change2FAMethodReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewChange2FAMethodNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewChange2FAMethodBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 429:
		result := NewChange2FAMethodTooManyRequests()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewChange2FAMethodInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v3/oauth/mfa/factor/change returns an error %d: %s", response.Code(), string(data))
	}
}

// NewChange2FAMethodNoContent creates a Change2FAMethodNoContent with default headers values
func NewChange2FAMethodNoContent() *Change2FAMethodNoContent {
	return &Change2FAMethodNoContent{}
}

/*Change2FAMethodNoContent handles this case with default header values.

  Method changed
*/
type Change2FAMethodNoContent struct {
}

func (o *Change2FAMethodNoContent) Error() string {
	return fmt.Sprintf("[POST /iam/v3/oauth/mfa/factor/change][%d] change2faMethodNoContent ", 204)
}

func (o *Change2FAMethodNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewChange2FAMethodBadRequest creates a Change2FAMethodBadRequest with default headers values
func NewChange2FAMethodBadRequest() *Change2FAMethodBadRequest {
	return &Change2FAMethodBadRequest{}
}

/*Change2FAMethodBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10189</td><td>invalid factor</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type Change2FAMethodBadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *Change2FAMethodBadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/v3/oauth/mfa/factor/change][%d] change2faMethodBadRequest  %+v", 400, o.ToJSONString())
}

func (o *Change2FAMethodBadRequest) ToJSONString() string {
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

func (o *Change2FAMethodBadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *Change2FAMethodBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewChange2FAMethodTooManyRequests creates a Change2FAMethodTooManyRequests with default headers values
func NewChange2FAMethodTooManyRequests() *Change2FAMethodTooManyRequests {
	return &Change2FAMethodTooManyRequests{}
}

/*Change2FAMethodTooManyRequests handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20007</td><td>too many requests</td></tr></table>
*/
type Change2FAMethodTooManyRequests struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *Change2FAMethodTooManyRequests) Error() string {
	return fmt.Sprintf("[POST /iam/v3/oauth/mfa/factor/change][%d] change2faMethodTooManyRequests  %+v", 429, o.ToJSONString())
}

func (o *Change2FAMethodTooManyRequests) ToJSONString() string {
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

func (o *Change2FAMethodTooManyRequests) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *Change2FAMethodTooManyRequests) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewChange2FAMethodInternalServerError creates a Change2FAMethodInternalServerError with default headers values
func NewChange2FAMethodInternalServerError() *Change2FAMethodInternalServerError {
	return &Change2FAMethodInternalServerError{}
}

/*Change2FAMethodInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type Change2FAMethodInternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *Change2FAMethodInternalServerError) Error() string {
	return fmt.Sprintf("[POST /iam/v3/oauth/mfa/factor/change][%d] change2faMethodInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *Change2FAMethodInternalServerError) ToJSONString() string {
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

func (o *Change2FAMethodInternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *Change2FAMethodInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
