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

// PublicCreateUserV2Reader is a Reader for the PublicCreateUserV2 structure.
type PublicCreateUserV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicCreateUserV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewPublicCreateUserV2Created()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicCreateUserV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicCreateUserV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicCreateUserV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewPublicCreateUserV2Conflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v2/public/namespaces/{namespace}/users returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicCreateUserV2Created creates a PublicCreateUserV2Created with default headers values
func NewPublicCreateUserV2Created() *PublicCreateUserV2Created {
	return &PublicCreateUserV2Created{}
}

/*PublicCreateUserV2Created handles this case with default header values.

  Created
*/
type PublicCreateUserV2Created struct {
	Payload *iamclientmodels.ModelUserCreateResponse
}

func (o *PublicCreateUserV2Created) Error() string {
	return fmt.Sprintf("[POST /iam/v2/public/namespaces/{namespace}/users][%d] publicCreateUserV2Created  %+v", 201, o.ToJSONString())
}

func (o *PublicCreateUserV2Created) ToJSONString() string {
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

func (o *PublicCreateUserV2Created) GetPayload() *iamclientmodels.ModelUserCreateResponse {
	return o.Payload
}

func (o *PublicCreateUserV2Created) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelUserCreateResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicCreateUserV2BadRequest creates a PublicCreateUserV2BadRequest with default headers values
func NewPublicCreateUserV2BadRequest() *PublicCreateUserV2BadRequest {
	return &PublicCreateUserV2BadRequest{}
}

/*PublicCreateUserV2BadRequest handles this case with default header values.

  Invalid request
*/
type PublicCreateUserV2BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicCreateUserV2BadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/v2/public/namespaces/{namespace}/users][%d] publicCreateUserV2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicCreateUserV2BadRequest) ToJSONString() string {
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

func (o *PublicCreateUserV2BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicCreateUserV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicCreateUserV2Unauthorized creates a PublicCreateUserV2Unauthorized with default headers values
func NewPublicCreateUserV2Unauthorized() *PublicCreateUserV2Unauthorized {
	return &PublicCreateUserV2Unauthorized{}
}

/*PublicCreateUserV2Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type PublicCreateUserV2Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicCreateUserV2Unauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/v2/public/namespaces/{namespace}/users][%d] publicCreateUserV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicCreateUserV2Unauthorized) ToJSONString() string {
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

func (o *PublicCreateUserV2Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicCreateUserV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicCreateUserV2Forbidden creates a PublicCreateUserV2Forbidden with default headers values
func NewPublicCreateUserV2Forbidden() *PublicCreateUserV2Forbidden {
	return &PublicCreateUserV2Forbidden{}
}

/*PublicCreateUserV2Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type PublicCreateUserV2Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicCreateUserV2Forbidden) Error() string {
	return fmt.Sprintf("[POST /iam/v2/public/namespaces/{namespace}/users][%d] publicCreateUserV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicCreateUserV2Forbidden) ToJSONString() string {
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

func (o *PublicCreateUserV2Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicCreateUserV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicCreateUserV2Conflict creates a PublicCreateUserV2Conflict with default headers values
func NewPublicCreateUserV2Conflict() *PublicCreateUserV2Conflict {
	return &PublicCreateUserV2Conflict{}
}

/*PublicCreateUserV2Conflict handles this case with default header values.

  Conflict
*/
type PublicCreateUserV2Conflict struct {
}

func (o *PublicCreateUserV2Conflict) Error() string {
	return fmt.Sprintf("[POST /iam/v2/public/namespaces/{namespace}/users][%d] publicCreateUserV2Conflict ", 409)
}

func (o *PublicCreateUserV2Conflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
