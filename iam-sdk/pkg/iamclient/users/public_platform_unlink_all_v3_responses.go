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

// PublicPlatformUnlinkAllV3Reader is a Reader for the PublicPlatformUnlinkAllV3 structure.
type PublicPlatformUnlinkAllV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicPlatformUnlinkAllV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewPublicPlatformUnlinkAllV3NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicPlatformUnlinkAllV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicPlatformUnlinkAllV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicPlatformUnlinkAllV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicPlatformUnlinkAllV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId}/all returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicPlatformUnlinkAllV3NoContent creates a PublicPlatformUnlinkAllV3NoContent with default headers values
func NewPublicPlatformUnlinkAllV3NoContent() *PublicPlatformUnlinkAllV3NoContent {
	return &PublicPlatformUnlinkAllV3NoContent{}
}

/*PublicPlatformUnlinkAllV3NoContent handles this case with default header values.

  Operation succeeded
*/
type PublicPlatformUnlinkAllV3NoContent struct {
}

func (o *PublicPlatformUnlinkAllV3NoContent) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId}/all][%d] publicPlatformUnlinkAllV3NoContent ", 204)
}

func (o *PublicPlatformUnlinkAllV3NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPublicPlatformUnlinkAllV3BadRequest creates a PublicPlatformUnlinkAllV3BadRequest with default headers values
func NewPublicPlatformUnlinkAllV3BadRequest() *PublicPlatformUnlinkAllV3BadRequest {
	return &PublicPlatformUnlinkAllV3BadRequest{}
}

/*PublicPlatformUnlinkAllV3BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type PublicPlatformUnlinkAllV3BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicPlatformUnlinkAllV3BadRequest) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId}/all][%d] publicPlatformUnlinkAllV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicPlatformUnlinkAllV3BadRequest) ToJSONString() string {
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

func (o *PublicPlatformUnlinkAllV3BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicPlatformUnlinkAllV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicPlatformUnlinkAllV3Unauthorized creates a PublicPlatformUnlinkAllV3Unauthorized with default headers values
func NewPublicPlatformUnlinkAllV3Unauthorized() *PublicPlatformUnlinkAllV3Unauthorized {
	return &PublicPlatformUnlinkAllV3Unauthorized{}
}

/*PublicPlatformUnlinkAllV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr><tr><td>20022</td><td>token is not user token</td></tr></table>
*/
type PublicPlatformUnlinkAllV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicPlatformUnlinkAllV3Unauthorized) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId}/all][%d] publicPlatformUnlinkAllV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicPlatformUnlinkAllV3Unauthorized) ToJSONString() string {
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

func (o *PublicPlatformUnlinkAllV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicPlatformUnlinkAllV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicPlatformUnlinkAllV3NotFound creates a PublicPlatformUnlinkAllV3NotFound with default headers values
func NewPublicPlatformUnlinkAllV3NotFound() *PublicPlatformUnlinkAllV3NotFound {
	return &PublicPlatformUnlinkAllV3NotFound{}
}

/*PublicPlatformUnlinkAllV3NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20008</td><td>user not found</td></tr></table>
*/
type PublicPlatformUnlinkAllV3NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicPlatformUnlinkAllV3NotFound) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId}/all][%d] publicPlatformUnlinkAllV3NotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicPlatformUnlinkAllV3NotFound) ToJSONString() string {
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

func (o *PublicPlatformUnlinkAllV3NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicPlatformUnlinkAllV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicPlatformUnlinkAllV3InternalServerError creates a PublicPlatformUnlinkAllV3InternalServerError with default headers values
func NewPublicPlatformUnlinkAllV3InternalServerError() *PublicPlatformUnlinkAllV3InternalServerError {
	return &PublicPlatformUnlinkAllV3InternalServerError{}
}

/*PublicPlatformUnlinkAllV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type PublicPlatformUnlinkAllV3InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicPlatformUnlinkAllV3InternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId}/all][%d] publicPlatformUnlinkAllV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicPlatformUnlinkAllV3InternalServerError) ToJSONString() string {
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

func (o *PublicPlatformUnlinkAllV3InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicPlatformUnlinkAllV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
