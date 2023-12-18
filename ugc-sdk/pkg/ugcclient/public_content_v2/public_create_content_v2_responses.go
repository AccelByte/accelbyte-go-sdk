// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package public_content_v2

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclientmodels"
)

// PublicCreateContentV2Reader is a Reader for the PublicCreateContentV2 structure.
type PublicCreateContentV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicCreateContentV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewPublicCreateContentV2Created()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicCreateContentV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicCreateContentV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicCreateContentV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicCreateContentV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /ugc/v2/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicCreateContentV2Created creates a PublicCreateContentV2Created with default headers values
func NewPublicCreateContentV2Created() *PublicCreateContentV2Created {
	return &PublicCreateContentV2Created{}
}

/*PublicCreateContentV2Created handles this case with default header values.

  Content created
*/
type PublicCreateContentV2Created struct {
	Payload *ugcclientmodels.ModelsCreateContentResponseV2
}

func (o *PublicCreateContentV2Created) Error() string {
	return fmt.Sprintf("[POST /ugc/v2/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents][%d] publicCreateContentV2Created  %+v", 201, o.ToJSONString())
}

func (o *PublicCreateContentV2Created) ToJSONString() string {
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

func (o *PublicCreateContentV2Created) GetPayload() *ugcclientmodels.ModelsCreateContentResponseV2 {
	return o.Payload
}

func (o *PublicCreateContentV2Created) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ModelsCreateContentResponseV2)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicCreateContentV2BadRequest creates a PublicCreateContentV2BadRequest with default headers values
func NewPublicCreateContentV2BadRequest() *PublicCreateContentV2BadRequest {
	return &PublicCreateContentV2BadRequest{}
}

/*PublicCreateContentV2BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>770100</td><td>Malformed request/Invalid request body/channel do not exist</td></tr></table>
*/
type PublicCreateContentV2BadRequest struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *PublicCreateContentV2BadRequest) Error() string {
	return fmt.Sprintf("[POST /ugc/v2/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents][%d] publicCreateContentV2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicCreateContentV2BadRequest) ToJSONString() string {
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

func (o *PublicCreateContentV2BadRequest) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicCreateContentV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicCreateContentV2Unauthorized creates a PublicCreateContentV2Unauthorized with default headers values
func NewPublicCreateContentV2Unauthorized() *PublicCreateContentV2Unauthorized {
	return &PublicCreateContentV2Unauthorized{}
}

/*PublicCreateContentV2Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type PublicCreateContentV2Unauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *PublicCreateContentV2Unauthorized) Error() string {
	return fmt.Sprintf("[POST /ugc/v2/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents][%d] publicCreateContentV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicCreateContentV2Unauthorized) ToJSONString() string {
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

func (o *PublicCreateContentV2Unauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicCreateContentV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicCreateContentV2NotFound creates a PublicCreateContentV2NotFound with default headers values
func NewPublicCreateContentV2NotFound() *PublicCreateContentV2NotFound {
	return &PublicCreateContentV2NotFound{}
}

/*PublicCreateContentV2NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>770106</td><td>channel doesn't exist</td></tr></table>
*/
type PublicCreateContentV2NotFound struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *PublicCreateContentV2NotFound) Error() string {
	return fmt.Sprintf("[POST /ugc/v2/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents][%d] publicCreateContentV2NotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicCreateContentV2NotFound) ToJSONString() string {
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

func (o *PublicCreateContentV2NotFound) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicCreateContentV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicCreateContentV2InternalServerError creates a PublicCreateContentV2InternalServerError with default headers values
func NewPublicCreateContentV2InternalServerError() *PublicCreateContentV2InternalServerError {
	return &PublicCreateContentV2InternalServerError{}
}

/*PublicCreateContentV2InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>770102</td><td>Unable to check user ban status/Unable to save ugc content: unable to get channel</td></tr><tr><td>770105</td><td>Unable to save ugc content: failed generate upload URL</td></tr><tr><td>770103</td><td>Unable to save ugc content: shareCode exceed the limit</td></tr></table>
*/
type PublicCreateContentV2InternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *PublicCreateContentV2InternalServerError) Error() string {
	return fmt.Sprintf("[POST /ugc/v2/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents][%d] publicCreateContentV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicCreateContentV2InternalServerError) ToJSONString() string {
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

func (o *PublicCreateContentV2InternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicCreateContentV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
