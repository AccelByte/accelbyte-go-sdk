// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package users

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

// PublicValidateUserByUserIDAndPasswordV3Reader is a Reader for the PublicValidateUserByUserIDAndPasswordV3 structure.
type PublicValidateUserByUserIDAndPasswordV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicValidateUserByUserIDAndPasswordV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewPublicValidateUserByUserIDAndPasswordV3NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicValidateUserByUserIDAndPasswordV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicValidateUserByUserIDAndPasswordV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicValidateUserByUserIDAndPasswordV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicValidateUserByUserIDAndPasswordV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicValidateUserByUserIDAndPasswordV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v3/public/namespaces/{namespace}/users/{userId}/validate returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicValidateUserByUserIDAndPasswordV3NoContent creates a PublicValidateUserByUserIDAndPasswordV3NoContent with default headers values
func NewPublicValidateUserByUserIDAndPasswordV3NoContent() *PublicValidateUserByUserIDAndPasswordV3NoContent {
	return &PublicValidateUserByUserIDAndPasswordV3NoContent{}
}

/*PublicValidateUserByUserIDAndPasswordV3NoContent handles this case with default header values.

  No Content
*/
type PublicValidateUserByUserIDAndPasswordV3NoContent struct {
}

func (o *PublicValidateUserByUserIDAndPasswordV3NoContent) Error() string {
	return fmt.Sprintf("[POST /iam/v3/public/namespaces/{namespace}/users/{userId}/validate][%d] publicValidateUserByUserIdAndPasswordV3NoContent ", 204)
}

func (o *PublicValidateUserByUserIDAndPasswordV3NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPublicValidateUserByUserIDAndPasswordV3BadRequest creates a PublicValidateUserByUserIDAndPasswordV3BadRequest with default headers values
func NewPublicValidateUserByUserIDAndPasswordV3BadRequest() *PublicValidateUserByUserIDAndPasswordV3BadRequest {
	return &PublicValidateUserByUserIDAndPasswordV3BadRequest{}
}

/*PublicValidateUserByUserIDAndPasswordV3BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10143</td><td>password not match</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type PublicValidateUserByUserIDAndPasswordV3BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicValidateUserByUserIDAndPasswordV3BadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/v3/public/namespaces/{namespace}/users/{userId}/validate][%d] publicValidateUserByUserIdAndPasswordV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicValidateUserByUserIDAndPasswordV3BadRequest) ToJSONString() string {
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

func (o *PublicValidateUserByUserIDAndPasswordV3BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicValidateUserByUserIDAndPasswordV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicValidateUserByUserIDAndPasswordV3Unauthorized creates a PublicValidateUserByUserIDAndPasswordV3Unauthorized with default headers values
func NewPublicValidateUserByUserIDAndPasswordV3Unauthorized() *PublicValidateUserByUserIDAndPasswordV3Unauthorized {
	return &PublicValidateUserByUserIDAndPasswordV3Unauthorized{}
}

/*PublicValidateUserByUserIDAndPasswordV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type PublicValidateUserByUserIDAndPasswordV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicValidateUserByUserIDAndPasswordV3Unauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/v3/public/namespaces/{namespace}/users/{userId}/validate][%d] publicValidateUserByUserIdAndPasswordV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicValidateUserByUserIDAndPasswordV3Unauthorized) ToJSONString() string {
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

func (o *PublicValidateUserByUserIDAndPasswordV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicValidateUserByUserIDAndPasswordV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicValidateUserByUserIDAndPasswordV3Forbidden creates a PublicValidateUserByUserIDAndPasswordV3Forbidden with default headers values
func NewPublicValidateUserByUserIDAndPasswordV3Forbidden() *PublicValidateUserByUserIDAndPasswordV3Forbidden {
	return &PublicValidateUserByUserIDAndPasswordV3Forbidden{}
}

/*PublicValidateUserByUserIDAndPasswordV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type PublicValidateUserByUserIDAndPasswordV3Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicValidateUserByUserIDAndPasswordV3Forbidden) Error() string {
	return fmt.Sprintf("[POST /iam/v3/public/namespaces/{namespace}/users/{userId}/validate][%d] publicValidateUserByUserIdAndPasswordV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicValidateUserByUserIDAndPasswordV3Forbidden) ToJSONString() string {
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

func (o *PublicValidateUserByUserIDAndPasswordV3Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicValidateUserByUserIDAndPasswordV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicValidateUserByUserIDAndPasswordV3NotFound creates a PublicValidateUserByUserIDAndPasswordV3NotFound with default headers values
func NewPublicValidateUserByUserIDAndPasswordV3NotFound() *PublicValidateUserByUserIDAndPasswordV3NotFound {
	return &PublicValidateUserByUserIDAndPasswordV3NotFound{}
}

/*PublicValidateUserByUserIDAndPasswordV3NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20008</td><td>user not found</td></tr></table>
*/
type PublicValidateUserByUserIDAndPasswordV3NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicValidateUserByUserIDAndPasswordV3NotFound) Error() string {
	return fmt.Sprintf("[POST /iam/v3/public/namespaces/{namespace}/users/{userId}/validate][%d] publicValidateUserByUserIdAndPasswordV3NotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicValidateUserByUserIDAndPasswordV3NotFound) ToJSONString() string {
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

func (o *PublicValidateUserByUserIDAndPasswordV3NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicValidateUserByUserIDAndPasswordV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicValidateUserByUserIDAndPasswordV3InternalServerError creates a PublicValidateUserByUserIDAndPasswordV3InternalServerError with default headers values
func NewPublicValidateUserByUserIDAndPasswordV3InternalServerError() *PublicValidateUserByUserIDAndPasswordV3InternalServerError {
	return &PublicValidateUserByUserIDAndPasswordV3InternalServerError{}
}

/*PublicValidateUserByUserIDAndPasswordV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type PublicValidateUserByUserIDAndPasswordV3InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicValidateUserByUserIDAndPasswordV3InternalServerError) Error() string {
	return fmt.Sprintf("[POST /iam/v3/public/namespaces/{namespace}/users/{userId}/validate][%d] publicValidateUserByUserIdAndPasswordV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicValidateUserByUserIDAndPasswordV3InternalServerError) ToJSONString() string {
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

func (o *PublicValidateUserByUserIDAndPasswordV3InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicValidateUserByUserIDAndPasswordV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
