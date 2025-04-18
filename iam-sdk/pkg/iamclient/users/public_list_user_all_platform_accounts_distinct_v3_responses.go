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

// PublicListUserAllPlatformAccountsDistinctV3Reader is a Reader for the PublicListUserAllPlatformAccountsDistinctV3 structure.
type PublicListUserAllPlatformAccountsDistinctV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicListUserAllPlatformAccountsDistinctV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicListUserAllPlatformAccountsDistinctV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicListUserAllPlatformAccountsDistinctV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicListUserAllPlatformAccountsDistinctV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicListUserAllPlatformAccountsDistinctV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicListUserAllPlatformAccountsDistinctV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicListUserAllPlatformAccountsDistinctV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v3/public/namespaces/{namespace}/users/{userId}/distinctPlatforms returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicListUserAllPlatformAccountsDistinctV3OK creates a PublicListUserAllPlatformAccountsDistinctV3OK with default headers values
func NewPublicListUserAllPlatformAccountsDistinctV3OK() *PublicListUserAllPlatformAccountsDistinctV3OK {
	return &PublicListUserAllPlatformAccountsDistinctV3OK{}
}

/*PublicListUserAllPlatformAccountsDistinctV3OK handles this case with default header values.

  OK
*/
type PublicListUserAllPlatformAccountsDistinctV3OK struct {
	Payload *iamclientmodels.AccountcommonDistinctPlatformResponseV3
}

func (o *PublicListUserAllPlatformAccountsDistinctV3OK) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/namespaces/{namespace}/users/{userId}/distinctPlatforms][%d] publicListUserAllPlatformAccountsDistinctV3OK  %+v", 200, o.ToJSONString())
}

func (o *PublicListUserAllPlatformAccountsDistinctV3OK) ToJSONString() string {
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

func (o *PublicListUserAllPlatformAccountsDistinctV3OK) GetPayload() *iamclientmodels.AccountcommonDistinctPlatformResponseV3 {
	return o.Payload
}

func (o *PublicListUserAllPlatformAccountsDistinctV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.AccountcommonDistinctPlatformResponseV3)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicListUserAllPlatformAccountsDistinctV3BadRequest creates a PublicListUserAllPlatformAccountsDistinctV3BadRequest with default headers values
func NewPublicListUserAllPlatformAccountsDistinctV3BadRequest() *PublicListUserAllPlatformAccountsDistinctV3BadRequest {
	return &PublicListUserAllPlatformAccountsDistinctV3BadRequest{}
}

/*PublicListUserAllPlatformAccountsDistinctV3BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type PublicListUserAllPlatformAccountsDistinctV3BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicListUserAllPlatformAccountsDistinctV3BadRequest) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/namespaces/{namespace}/users/{userId}/distinctPlatforms][%d] publicListUserAllPlatformAccountsDistinctV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicListUserAllPlatformAccountsDistinctV3BadRequest) ToJSONString() string {
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

func (o *PublicListUserAllPlatformAccountsDistinctV3BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicListUserAllPlatformAccountsDistinctV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicListUserAllPlatformAccountsDistinctV3Unauthorized creates a PublicListUserAllPlatformAccountsDistinctV3Unauthorized with default headers values
func NewPublicListUserAllPlatformAccountsDistinctV3Unauthorized() *PublicListUserAllPlatformAccountsDistinctV3Unauthorized {
	return &PublicListUserAllPlatformAccountsDistinctV3Unauthorized{}
}

/*PublicListUserAllPlatformAccountsDistinctV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr><tr><td>20022</td><td>token is not user token</td></tr></table>
*/
type PublicListUserAllPlatformAccountsDistinctV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicListUserAllPlatformAccountsDistinctV3Unauthorized) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/namespaces/{namespace}/users/{userId}/distinctPlatforms][%d] publicListUserAllPlatformAccountsDistinctV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicListUserAllPlatformAccountsDistinctV3Unauthorized) ToJSONString() string {
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

func (o *PublicListUserAllPlatformAccountsDistinctV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicListUserAllPlatformAccountsDistinctV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicListUserAllPlatformAccountsDistinctV3Forbidden creates a PublicListUserAllPlatformAccountsDistinctV3Forbidden with default headers values
func NewPublicListUserAllPlatformAccountsDistinctV3Forbidden() *PublicListUserAllPlatformAccountsDistinctV3Forbidden {
	return &PublicListUserAllPlatformAccountsDistinctV3Forbidden{}
}

/*PublicListUserAllPlatformAccountsDistinctV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type PublicListUserAllPlatformAccountsDistinctV3Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicListUserAllPlatformAccountsDistinctV3Forbidden) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/namespaces/{namespace}/users/{userId}/distinctPlatforms][%d] publicListUserAllPlatformAccountsDistinctV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicListUserAllPlatformAccountsDistinctV3Forbidden) ToJSONString() string {
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

func (o *PublicListUserAllPlatformAccountsDistinctV3Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicListUserAllPlatformAccountsDistinctV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicListUserAllPlatformAccountsDistinctV3NotFound creates a PublicListUserAllPlatformAccountsDistinctV3NotFound with default headers values
func NewPublicListUserAllPlatformAccountsDistinctV3NotFound() *PublicListUserAllPlatformAccountsDistinctV3NotFound {
	return &PublicListUserAllPlatformAccountsDistinctV3NotFound{}
}

/*PublicListUserAllPlatformAccountsDistinctV3NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20008</td><td>user not found</td></tr></table>
*/
type PublicListUserAllPlatformAccountsDistinctV3NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicListUserAllPlatformAccountsDistinctV3NotFound) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/namespaces/{namespace}/users/{userId}/distinctPlatforms][%d] publicListUserAllPlatformAccountsDistinctV3NotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicListUserAllPlatformAccountsDistinctV3NotFound) ToJSONString() string {
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

func (o *PublicListUserAllPlatformAccountsDistinctV3NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicListUserAllPlatformAccountsDistinctV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicListUserAllPlatformAccountsDistinctV3InternalServerError creates a PublicListUserAllPlatformAccountsDistinctV3InternalServerError with default headers values
func NewPublicListUserAllPlatformAccountsDistinctV3InternalServerError() *PublicListUserAllPlatformAccountsDistinctV3InternalServerError {
	return &PublicListUserAllPlatformAccountsDistinctV3InternalServerError{}
}

/*PublicListUserAllPlatformAccountsDistinctV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type PublicListUserAllPlatformAccountsDistinctV3InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicListUserAllPlatformAccountsDistinctV3InternalServerError) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/namespaces/{namespace}/users/{userId}/distinctPlatforms][%d] publicListUserAllPlatformAccountsDistinctV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicListUserAllPlatformAccountsDistinctV3InternalServerError) ToJSONString() string {
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

func (o *PublicListUserAllPlatformAccountsDistinctV3InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicListUserAllPlatformAccountsDistinctV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
