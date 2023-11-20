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

// PublicUpdateContentByShareCodeV2Reader is a Reader for the PublicUpdateContentByShareCodeV2 structure.
type PublicUpdateContentByShareCodeV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicUpdateContentByShareCodeV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicUpdateContentByShareCodeV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicUpdateContentByShareCodeV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicUpdateContentByShareCodeV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicUpdateContentByShareCodeV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewPublicUpdateContentByShareCodeV2Conflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicUpdateContentByShareCodeV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /ugc/v2/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/s3/sharecodes/{shareCode} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicUpdateContentByShareCodeV2OK creates a PublicUpdateContentByShareCodeV2OK with default headers values
func NewPublicUpdateContentByShareCodeV2OK() *PublicUpdateContentByShareCodeV2OK {
	return &PublicUpdateContentByShareCodeV2OK{}
}

/*PublicUpdateContentByShareCodeV2OK handles this case with default header values.

  OK
*/
type PublicUpdateContentByShareCodeV2OK struct {
	Payload *ugcclientmodels.ModelsCreateContentResponseV2
}

func (o *PublicUpdateContentByShareCodeV2OK) Error() string {
	return fmt.Sprintf("[PUT /ugc/v2/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/s3/sharecodes/{shareCode}][%d] publicUpdateContentByShareCodeV2OK  %+v", 200, o.ToJSONString())
}

func (o *PublicUpdateContentByShareCodeV2OK) ToJSONString() string {
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

func (o *PublicUpdateContentByShareCodeV2OK) GetPayload() *ugcclientmodels.ModelsCreateContentResponseV2 {
	return o.Payload
}

func (o *PublicUpdateContentByShareCodeV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicUpdateContentByShareCodeV2BadRequest creates a PublicUpdateContentByShareCodeV2BadRequest with default headers values
func NewPublicUpdateContentByShareCodeV2BadRequest() *PublicUpdateContentByShareCodeV2BadRequest {
	return &PublicUpdateContentByShareCodeV2BadRequest{}
}

/*PublicUpdateContentByShareCodeV2BadRequest handles this case with default header values.

  Bad Request
*/
type PublicUpdateContentByShareCodeV2BadRequest struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *PublicUpdateContentByShareCodeV2BadRequest) Error() string {
	return fmt.Sprintf("[PUT /ugc/v2/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/s3/sharecodes/{shareCode}][%d] publicUpdateContentByShareCodeV2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicUpdateContentByShareCodeV2BadRequest) ToJSONString() string {
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

func (o *PublicUpdateContentByShareCodeV2BadRequest) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicUpdateContentByShareCodeV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicUpdateContentByShareCodeV2Unauthorized creates a PublicUpdateContentByShareCodeV2Unauthorized with default headers values
func NewPublicUpdateContentByShareCodeV2Unauthorized() *PublicUpdateContentByShareCodeV2Unauthorized {
	return &PublicUpdateContentByShareCodeV2Unauthorized{}
}

/*PublicUpdateContentByShareCodeV2Unauthorized handles this case with default header values.

  Unauthorized
*/
type PublicUpdateContentByShareCodeV2Unauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *PublicUpdateContentByShareCodeV2Unauthorized) Error() string {
	return fmt.Sprintf("[PUT /ugc/v2/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/s3/sharecodes/{shareCode}][%d] publicUpdateContentByShareCodeV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicUpdateContentByShareCodeV2Unauthorized) ToJSONString() string {
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

func (o *PublicUpdateContentByShareCodeV2Unauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicUpdateContentByShareCodeV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicUpdateContentByShareCodeV2NotFound creates a PublicUpdateContentByShareCodeV2NotFound with default headers values
func NewPublicUpdateContentByShareCodeV2NotFound() *PublicUpdateContentByShareCodeV2NotFound {
	return &PublicUpdateContentByShareCodeV2NotFound{}
}

/*PublicUpdateContentByShareCodeV2NotFound handles this case with default header values.

  Not Found
*/
type PublicUpdateContentByShareCodeV2NotFound struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *PublicUpdateContentByShareCodeV2NotFound) Error() string {
	return fmt.Sprintf("[PUT /ugc/v2/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/s3/sharecodes/{shareCode}][%d] publicUpdateContentByShareCodeV2NotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicUpdateContentByShareCodeV2NotFound) ToJSONString() string {
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

func (o *PublicUpdateContentByShareCodeV2NotFound) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicUpdateContentByShareCodeV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicUpdateContentByShareCodeV2Conflict creates a PublicUpdateContentByShareCodeV2Conflict with default headers values
func NewPublicUpdateContentByShareCodeV2Conflict() *PublicUpdateContentByShareCodeV2Conflict {
	return &PublicUpdateContentByShareCodeV2Conflict{}
}

/*PublicUpdateContentByShareCodeV2Conflict handles this case with default header values.

  Conflict
*/
type PublicUpdateContentByShareCodeV2Conflict struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *PublicUpdateContentByShareCodeV2Conflict) Error() string {
	return fmt.Sprintf("[PUT /ugc/v2/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/s3/sharecodes/{shareCode}][%d] publicUpdateContentByShareCodeV2Conflict  %+v", 409, o.ToJSONString())
}

func (o *PublicUpdateContentByShareCodeV2Conflict) ToJSONString() string {
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

func (o *PublicUpdateContentByShareCodeV2Conflict) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicUpdateContentByShareCodeV2Conflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicUpdateContentByShareCodeV2InternalServerError creates a PublicUpdateContentByShareCodeV2InternalServerError with default headers values
func NewPublicUpdateContentByShareCodeV2InternalServerError() *PublicUpdateContentByShareCodeV2InternalServerError {
	return &PublicUpdateContentByShareCodeV2InternalServerError{}
}

/*PublicUpdateContentByShareCodeV2InternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicUpdateContentByShareCodeV2InternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *PublicUpdateContentByShareCodeV2InternalServerError) Error() string {
	return fmt.Sprintf("[PUT /ugc/v2/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/s3/sharecodes/{shareCode}][%d] publicUpdateContentByShareCodeV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicUpdateContentByShareCodeV2InternalServerError) ToJSONString() string {
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

func (o *PublicUpdateContentByShareCodeV2InternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicUpdateContentByShareCodeV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
