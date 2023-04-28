// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package users_v4

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

// PublicGetMyEnabledFactorsV4Reader is a Reader for the PublicGetMyEnabledFactorsV4 structure.
type PublicGetMyEnabledFactorsV4Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGetMyEnabledFactorsV4Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGetMyEnabledFactorsV4OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicGetMyEnabledFactorsV4BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicGetMyEnabledFactorsV4Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicGetMyEnabledFactorsV4Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicGetMyEnabledFactorsV4NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicGetMyEnabledFactorsV4InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v4/public/namespaces/{namespace}/users/me/mfa/factor returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGetMyEnabledFactorsV4OK creates a PublicGetMyEnabledFactorsV4OK with default headers values
func NewPublicGetMyEnabledFactorsV4OK() *PublicGetMyEnabledFactorsV4OK {
	return &PublicGetMyEnabledFactorsV4OK{}
}

/*PublicGetMyEnabledFactorsV4OK handles this case with default header values.

  Methods returned
*/
type PublicGetMyEnabledFactorsV4OK struct {
	Payload *iamclientmodels.ModelEnabledFactorsResponseV4
}

func (o *PublicGetMyEnabledFactorsV4OK) Error() string {
	return fmt.Sprintf("[GET /iam/v4/public/namespaces/{namespace}/users/me/mfa/factor][%d] publicGetMyEnabledFactorsV4OK  %+v", 200, o.ToJSONString())
}

func (o *PublicGetMyEnabledFactorsV4OK) ToJSONString() string {
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

func (o *PublicGetMyEnabledFactorsV4OK) GetPayload() *iamclientmodels.ModelEnabledFactorsResponseV4 {
	return o.Payload
}

func (o *PublicGetMyEnabledFactorsV4OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelEnabledFactorsResponseV4)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetMyEnabledFactorsV4BadRequest creates a PublicGetMyEnabledFactorsV4BadRequest with default headers values
func NewPublicGetMyEnabledFactorsV4BadRequest() *PublicGetMyEnabledFactorsV4BadRequest {
	return &PublicGetMyEnabledFactorsV4BadRequest{}
}

/*PublicGetMyEnabledFactorsV4BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10191</td><td>email address not verified</td></tr><tr><td>10193</td><td>mfa not enabled</td></tr><tr><td>10171</td><td>email address not found</td></tr></table>
*/
type PublicGetMyEnabledFactorsV4BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicGetMyEnabledFactorsV4BadRequest) Error() string {
	return fmt.Sprintf("[GET /iam/v4/public/namespaces/{namespace}/users/me/mfa/factor][%d] publicGetMyEnabledFactorsV4BadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicGetMyEnabledFactorsV4BadRequest) ToJSONString() string {
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

func (o *PublicGetMyEnabledFactorsV4BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicGetMyEnabledFactorsV4BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicGetMyEnabledFactorsV4Unauthorized creates a PublicGetMyEnabledFactorsV4Unauthorized with default headers values
func NewPublicGetMyEnabledFactorsV4Unauthorized() *PublicGetMyEnabledFactorsV4Unauthorized {
	return &PublicGetMyEnabledFactorsV4Unauthorized{}
}

/*PublicGetMyEnabledFactorsV4Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type PublicGetMyEnabledFactorsV4Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicGetMyEnabledFactorsV4Unauthorized) Error() string {
	return fmt.Sprintf("[GET /iam/v4/public/namespaces/{namespace}/users/me/mfa/factor][%d] publicGetMyEnabledFactorsV4Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicGetMyEnabledFactorsV4Unauthorized) ToJSONString() string {
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

func (o *PublicGetMyEnabledFactorsV4Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicGetMyEnabledFactorsV4Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicGetMyEnabledFactorsV4Forbidden creates a PublicGetMyEnabledFactorsV4Forbidden with default headers values
func NewPublicGetMyEnabledFactorsV4Forbidden() *PublicGetMyEnabledFactorsV4Forbidden {
	return &PublicGetMyEnabledFactorsV4Forbidden{}
}

/*PublicGetMyEnabledFactorsV4Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type PublicGetMyEnabledFactorsV4Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicGetMyEnabledFactorsV4Forbidden) Error() string {
	return fmt.Sprintf("[GET /iam/v4/public/namespaces/{namespace}/users/me/mfa/factor][%d] publicGetMyEnabledFactorsV4Forbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicGetMyEnabledFactorsV4Forbidden) ToJSONString() string {
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

func (o *PublicGetMyEnabledFactorsV4Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicGetMyEnabledFactorsV4Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicGetMyEnabledFactorsV4NotFound creates a PublicGetMyEnabledFactorsV4NotFound with default headers values
func NewPublicGetMyEnabledFactorsV4NotFound() *PublicGetMyEnabledFactorsV4NotFound {
	return &PublicGetMyEnabledFactorsV4NotFound{}
}

/*PublicGetMyEnabledFactorsV4NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10139</td><td>platform account not found</td></tr><tr><td>20008</td><td>user not found</td></tr></table>
*/
type PublicGetMyEnabledFactorsV4NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicGetMyEnabledFactorsV4NotFound) Error() string {
	return fmt.Sprintf("[GET /iam/v4/public/namespaces/{namespace}/users/me/mfa/factor][%d] publicGetMyEnabledFactorsV4NotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicGetMyEnabledFactorsV4NotFound) ToJSONString() string {
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

func (o *PublicGetMyEnabledFactorsV4NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicGetMyEnabledFactorsV4NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicGetMyEnabledFactorsV4InternalServerError creates a PublicGetMyEnabledFactorsV4InternalServerError with default headers values
func NewPublicGetMyEnabledFactorsV4InternalServerError() *PublicGetMyEnabledFactorsV4InternalServerError {
	return &PublicGetMyEnabledFactorsV4InternalServerError{}
}

/*PublicGetMyEnabledFactorsV4InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type PublicGetMyEnabledFactorsV4InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicGetMyEnabledFactorsV4InternalServerError) Error() string {
	return fmt.Sprintf("[GET /iam/v4/public/namespaces/{namespace}/users/me/mfa/factor][%d] publicGetMyEnabledFactorsV4InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicGetMyEnabledFactorsV4InternalServerError) ToJSONString() string {
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

func (o *PublicGetMyEnabledFactorsV4InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicGetMyEnabledFactorsV4InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
