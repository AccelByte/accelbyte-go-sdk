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

// PublicForcePlatformLinkV3Reader is a Reader for the PublicForcePlatformLinkV3 structure.
type PublicForcePlatformLinkV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicForcePlatformLinkV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewPublicForcePlatformLinkV3NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicForcePlatformLinkV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicForcePlatformLinkV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicForcePlatformLinkV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewPublicForcePlatformLinkV3Conflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicForcePlatformLinkV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId}/force returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicForcePlatformLinkV3NoContent creates a PublicForcePlatformLinkV3NoContent with default headers values
func NewPublicForcePlatformLinkV3NoContent() *PublicForcePlatformLinkV3NoContent {
	return &PublicForcePlatformLinkV3NoContent{}
}

/*PublicForcePlatformLinkV3NoContent handles this case with default header values.

  Operation succeeded
*/
type PublicForcePlatformLinkV3NoContent struct {
}

func (o *PublicForcePlatformLinkV3NoContent) Error() string {
	return fmt.Sprintf("[POST /iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId}/force][%d] publicForcePlatformLinkV3NoContent ", 204)
}

func (o *PublicForcePlatformLinkV3NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPublicForcePlatformLinkV3BadRequest creates a PublicForcePlatformLinkV3BadRequest with default headers values
func NewPublicForcePlatformLinkV3BadRequest() *PublicForcePlatformLinkV3BadRequest {
	return &PublicForcePlatformLinkV3BadRequest{}
}

/*PublicForcePlatformLinkV3BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr></table>
*/
type PublicForcePlatformLinkV3BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicForcePlatformLinkV3BadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId}/force][%d] publicForcePlatformLinkV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicForcePlatformLinkV3BadRequest) ToJSONString() string {
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

func (o *PublicForcePlatformLinkV3BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicForcePlatformLinkV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicForcePlatformLinkV3Unauthorized creates a PublicForcePlatformLinkV3Unauthorized with default headers values
func NewPublicForcePlatformLinkV3Unauthorized() *PublicForcePlatformLinkV3Unauthorized {
	return &PublicForcePlatformLinkV3Unauthorized{}
}

/*PublicForcePlatformLinkV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr><tr><td>20022</td><td>token is not user token</td></tr></table>
*/
type PublicForcePlatformLinkV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicForcePlatformLinkV3Unauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId}/force][%d] publicForcePlatformLinkV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicForcePlatformLinkV3Unauthorized) ToJSONString() string {
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

func (o *PublicForcePlatformLinkV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicForcePlatformLinkV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicForcePlatformLinkV3NotFound creates a PublicForcePlatformLinkV3NotFound with default headers values
func NewPublicForcePlatformLinkV3NotFound() *PublicForcePlatformLinkV3NotFound {
	return &PublicForcePlatformLinkV3NotFound{}
}

/*PublicForcePlatformLinkV3NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10174</td><td>platform client not found</td></tr></table>
*/
type PublicForcePlatformLinkV3NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicForcePlatformLinkV3NotFound) Error() string {
	return fmt.Sprintf("[POST /iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId}/force][%d] publicForcePlatformLinkV3NotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicForcePlatformLinkV3NotFound) ToJSONString() string {
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

func (o *PublicForcePlatformLinkV3NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicForcePlatformLinkV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicForcePlatformLinkV3Conflict creates a PublicForcePlatformLinkV3Conflict with default headers values
func NewPublicForcePlatformLinkV3Conflict() *PublicForcePlatformLinkV3Conflict {
	return &PublicForcePlatformLinkV3Conflict{}
}

/*PublicForcePlatformLinkV3Conflict handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10163</td><td>platform is already linked with the user account</td></tr><tr><td>10172</td><td>platform user is already linked with the account</td></tr></table>
*/
type PublicForcePlatformLinkV3Conflict struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicForcePlatformLinkV3Conflict) Error() string {
	return fmt.Sprintf("[POST /iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId}/force][%d] publicForcePlatformLinkV3Conflict  %+v", 409, o.ToJSONString())
}

func (o *PublicForcePlatformLinkV3Conflict) ToJSONString() string {
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

func (o *PublicForcePlatformLinkV3Conflict) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicForcePlatformLinkV3Conflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicForcePlatformLinkV3InternalServerError creates a PublicForcePlatformLinkV3InternalServerError with default headers values
func NewPublicForcePlatformLinkV3InternalServerError() *PublicForcePlatformLinkV3InternalServerError {
	return &PublicForcePlatformLinkV3InternalServerError{}
}

/*PublicForcePlatformLinkV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type PublicForcePlatformLinkV3InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicForcePlatformLinkV3InternalServerError) Error() string {
	return fmt.Sprintf("[POST /iam/v3/public/namespaces/{namespace}/users/me/platforms/{platformId}/force][%d] publicForcePlatformLinkV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicForcePlatformLinkV3InternalServerError) ToJSONString() string {
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

func (o *PublicForcePlatformLinkV3InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicForcePlatformLinkV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
