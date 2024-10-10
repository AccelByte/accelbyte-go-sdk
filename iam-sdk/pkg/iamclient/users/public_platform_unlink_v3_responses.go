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

// PublicPlatformUnlinkV3Reader is a Reader for the PublicPlatformUnlinkV3 structure.
type PublicPlatformUnlinkV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicPlatformUnlinkV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewPublicPlatformUnlinkV3NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicPlatformUnlinkV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicPlatformUnlinkV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicPlatformUnlinkV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicPlatformUnlinkV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicPlatformUnlinkV3NoContent creates a PublicPlatformUnlinkV3NoContent with default headers values
func NewPublicPlatformUnlinkV3NoContent() *PublicPlatformUnlinkV3NoContent {
	return &PublicPlatformUnlinkV3NoContent{}
}

/*PublicPlatformUnlinkV3NoContent handles this case with default header values.

  Operation succeeded
*/
type PublicPlatformUnlinkV3NoContent struct {
}

func (o *PublicPlatformUnlinkV3NoContent) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId}][%d] publicPlatformUnlinkV3NoContent ", 204)
}

func (o *PublicPlatformUnlinkV3NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPublicPlatformUnlinkV3BadRequest creates a PublicPlatformUnlinkV3BadRequest with default headers values
func NewPublicPlatformUnlinkV3BadRequest() *PublicPlatformUnlinkV3BadRequest {
	return &PublicPlatformUnlinkV3BadRequest{}
}

/*PublicPlatformUnlinkV3BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type PublicPlatformUnlinkV3BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicPlatformUnlinkV3BadRequest) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId}][%d] publicPlatformUnlinkV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicPlatformUnlinkV3BadRequest) ToJSONString() string {
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

func (o *PublicPlatformUnlinkV3BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicPlatformUnlinkV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicPlatformUnlinkV3Unauthorized creates a PublicPlatformUnlinkV3Unauthorized with default headers values
func NewPublicPlatformUnlinkV3Unauthorized() *PublicPlatformUnlinkV3Unauthorized {
	return &PublicPlatformUnlinkV3Unauthorized{}
}

/*PublicPlatformUnlinkV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr><tr><td>20022</td><td>token is not user token</td></tr></table>
*/
type PublicPlatformUnlinkV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicPlatformUnlinkV3Unauthorized) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId}][%d] publicPlatformUnlinkV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicPlatformUnlinkV3Unauthorized) ToJSONString() string {
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

func (o *PublicPlatformUnlinkV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicPlatformUnlinkV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicPlatformUnlinkV3NotFound creates a PublicPlatformUnlinkV3NotFound with default headers values
func NewPublicPlatformUnlinkV3NotFound() *PublicPlatformUnlinkV3NotFound {
	return &PublicPlatformUnlinkV3NotFound{}
}

/*PublicPlatformUnlinkV3NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20008</td><td>user not found</td></tr></table>
*/
type PublicPlatformUnlinkV3NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicPlatformUnlinkV3NotFound) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId}][%d] publicPlatformUnlinkV3NotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicPlatformUnlinkV3NotFound) ToJSONString() string {
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

func (o *PublicPlatformUnlinkV3NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicPlatformUnlinkV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicPlatformUnlinkV3InternalServerError creates a PublicPlatformUnlinkV3InternalServerError with default headers values
func NewPublicPlatformUnlinkV3InternalServerError() *PublicPlatformUnlinkV3InternalServerError {
	return &PublicPlatformUnlinkV3InternalServerError{}
}

/*PublicPlatformUnlinkV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type PublicPlatformUnlinkV3InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicPlatformUnlinkV3InternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId}][%d] publicPlatformUnlinkV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicPlatformUnlinkV3InternalServerError) ToJSONString() string {
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

func (o *PublicPlatformUnlinkV3InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicPlatformUnlinkV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
