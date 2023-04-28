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

// PublicGetPublisherUserV3Reader is a Reader for the PublicGetPublisherUserV3 structure.
type PublicGetPublisherUserV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGetPublisherUserV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGetPublisherUserV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicGetPublisherUserV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicGetPublisherUserV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicGetPublisherUserV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicGetPublisherUserV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v3/public/namespaces/{namespace}/users/{userId}/publisher returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGetPublisherUserV3OK creates a PublicGetPublisherUserV3OK with default headers values
func NewPublicGetPublisherUserV3OK() *PublicGetPublisherUserV3OK {
	return &PublicGetPublisherUserV3OK{}
}

/*PublicGetPublisherUserV3OK handles this case with default header values.

  OK
*/
type PublicGetPublisherUserV3OK struct {
	Payload *iamclientmodels.ModelGetPublisherUserV3Response
}

func (o *PublicGetPublisherUserV3OK) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/namespaces/{namespace}/users/{userId}/publisher][%d] publicGetPublisherUserV3OK  %+v", 200, o.ToJSONString())
}

func (o *PublicGetPublisherUserV3OK) ToJSONString() string {
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

func (o *PublicGetPublisherUserV3OK) GetPayload() *iamclientmodels.ModelGetPublisherUserV3Response {
	return o.Payload
}

func (o *PublicGetPublisherUserV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelGetPublisherUserV3Response)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetPublisherUserV3BadRequest creates a PublicGetPublisherUserV3BadRequest with default headers values
func NewPublicGetPublisherUserV3BadRequest() *PublicGetPublisherUserV3BadRequest {
	return &PublicGetPublisherUserV3BadRequest{}
}

/*PublicGetPublisherUserV3BadRequest handles this case with default header values.

  Error Code: 7239 - Error Message: wrong namespace: required game namespace
*/
type PublicGetPublisherUserV3BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicGetPublisherUserV3BadRequest) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/namespaces/{namespace}/users/{userId}/publisher][%d] publicGetPublisherUserV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicGetPublisherUserV3BadRequest) ToJSONString() string {
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

func (o *PublicGetPublisherUserV3BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicGetPublisherUserV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicGetPublisherUserV3Unauthorized creates a PublicGetPublisherUserV3Unauthorized with default headers values
func NewPublicGetPublisherUserV3Unauthorized() *PublicGetPublisherUserV3Unauthorized {
	return &PublicGetPublisherUserV3Unauthorized{}
}

/*PublicGetPublisherUserV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type PublicGetPublisherUserV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicGetPublisherUserV3Unauthorized) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/namespaces/{namespace}/users/{userId}/publisher][%d] publicGetPublisherUserV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicGetPublisherUserV3Unauthorized) ToJSONString() string {
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

func (o *PublicGetPublisherUserV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicGetPublisherUserV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicGetPublisherUserV3Forbidden creates a PublicGetPublisherUserV3Forbidden with default headers values
func NewPublicGetPublisherUserV3Forbidden() *PublicGetPublisherUserV3Forbidden {
	return &PublicGetPublisherUserV3Forbidden{}
}

/*PublicGetPublisherUserV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type PublicGetPublisherUserV3Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicGetPublisherUserV3Forbidden) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/namespaces/{namespace}/users/{userId}/publisher][%d] publicGetPublisherUserV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicGetPublisherUserV3Forbidden) ToJSONString() string {
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

func (o *PublicGetPublisherUserV3Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicGetPublisherUserV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicGetPublisherUserV3NotFound creates a PublicGetPublisherUserV3NotFound with default headers values
func NewPublicGetPublisherUserV3NotFound() *PublicGetPublisherUserV3NotFound {
	return &PublicGetPublisherUserV3NotFound{}
}

/*PublicGetPublisherUserV3NotFound handles this case with default header values.

  Data not found
*/
type PublicGetPublisherUserV3NotFound struct {
}

func (o *PublicGetPublisherUserV3NotFound) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/namespaces/{namespace}/users/{userId}/publisher][%d] publicGetPublisherUserV3NotFound ", 404)
}

func (o *PublicGetPublisherUserV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
