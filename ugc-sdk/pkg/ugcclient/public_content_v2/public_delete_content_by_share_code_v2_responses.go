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

// PublicDeleteContentByShareCodeV2Reader is a Reader for the PublicDeleteContentByShareCodeV2 structure.
type PublicDeleteContentByShareCodeV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicDeleteContentByShareCodeV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewPublicDeleteContentByShareCodeV2NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicDeleteContentByShareCodeV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicDeleteContentByShareCodeV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicDeleteContentByShareCodeV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /ugc/v2/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/sharecodes/{shareCode} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicDeleteContentByShareCodeV2NoContent creates a PublicDeleteContentByShareCodeV2NoContent with default headers values
func NewPublicDeleteContentByShareCodeV2NoContent() *PublicDeleteContentByShareCodeV2NoContent {
	return &PublicDeleteContentByShareCodeV2NoContent{}
}

/*PublicDeleteContentByShareCodeV2NoContent handles this case with default header values.

  Content deleted
*/
type PublicDeleteContentByShareCodeV2NoContent struct {
}

func (o *PublicDeleteContentByShareCodeV2NoContent) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v2/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/sharecodes/{shareCode}][%d] publicDeleteContentByShareCodeV2NoContent ", 204)
}

func (o *PublicDeleteContentByShareCodeV2NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPublicDeleteContentByShareCodeV2Unauthorized creates a PublicDeleteContentByShareCodeV2Unauthorized with default headers values
func NewPublicDeleteContentByShareCodeV2Unauthorized() *PublicDeleteContentByShareCodeV2Unauthorized {
	return &PublicDeleteContentByShareCodeV2Unauthorized{}
}

/*PublicDeleteContentByShareCodeV2Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type PublicDeleteContentByShareCodeV2Unauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *PublicDeleteContentByShareCodeV2Unauthorized) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v2/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/sharecodes/{shareCode}][%d] publicDeleteContentByShareCodeV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicDeleteContentByShareCodeV2Unauthorized) ToJSONString() string {
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

func (o *PublicDeleteContentByShareCodeV2Unauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicDeleteContentByShareCodeV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicDeleteContentByShareCodeV2NotFound creates a PublicDeleteContentByShareCodeV2NotFound with default headers values
func NewPublicDeleteContentByShareCodeV2NotFound() *PublicDeleteContentByShareCodeV2NotFound {
	return &PublicDeleteContentByShareCodeV2NotFound{}
}

/*PublicDeleteContentByShareCodeV2NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>772702</td><td>Content not found</td></tr></table>
*/
type PublicDeleteContentByShareCodeV2NotFound struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *PublicDeleteContentByShareCodeV2NotFound) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v2/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/sharecodes/{shareCode}][%d] publicDeleteContentByShareCodeV2NotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicDeleteContentByShareCodeV2NotFound) ToJSONString() string {
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

func (o *PublicDeleteContentByShareCodeV2NotFound) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicDeleteContentByShareCodeV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicDeleteContentByShareCodeV2InternalServerError creates a PublicDeleteContentByShareCodeV2InternalServerError with default headers values
func NewPublicDeleteContentByShareCodeV2InternalServerError() *PublicDeleteContentByShareCodeV2InternalServerError {
	return &PublicDeleteContentByShareCodeV2InternalServerError{}
}

/*PublicDeleteContentByShareCodeV2InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>772701</td><td>Unable to delete content/Unable to update user liked count/Unable to delete like state/Unable to delete like state</td></tr></table>
*/
type PublicDeleteContentByShareCodeV2InternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *PublicDeleteContentByShareCodeV2InternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /ugc/v2/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/sharecodes/{shareCode}][%d] publicDeleteContentByShareCodeV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicDeleteContentByShareCodeV2InternalServerError) ToJSONString() string {
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

func (o *PublicDeleteContentByShareCodeV2InternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicDeleteContentByShareCodeV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
