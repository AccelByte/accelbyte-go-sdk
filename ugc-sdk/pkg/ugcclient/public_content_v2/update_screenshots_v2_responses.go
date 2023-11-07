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

// UpdateScreenshotsV2Reader is a Reader for the UpdateScreenshotsV2 structure.
type UpdateScreenshotsV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateScreenshotsV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdateScreenshotsV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdateScreenshotsV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewUpdateScreenshotsV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUpdateScreenshotsV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewUpdateScreenshotsV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /ugc/v2/public/namespaces/{namespace}/users/{userId}/contents/{contentId}/screenshots returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateScreenshotsV2OK creates a UpdateScreenshotsV2OK with default headers values
func NewUpdateScreenshotsV2OK() *UpdateScreenshotsV2OK {
	return &UpdateScreenshotsV2OK{}
}

/*UpdateScreenshotsV2OK handles this case with default header values.

  OK
*/
type UpdateScreenshotsV2OK struct {
	Payload *ugcclientmodels.ModelsUpdateScreenshotResponse
}

func (o *UpdateScreenshotsV2OK) Error() string {
	return fmt.Sprintf("[PUT /ugc/v2/public/namespaces/{namespace}/users/{userId}/contents/{contentId}/screenshots][%d] updateScreenshotsV2OK  %+v", 200, o.ToJSONString())
}

func (o *UpdateScreenshotsV2OK) ToJSONString() string {
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

func (o *UpdateScreenshotsV2OK) GetPayload() *ugcclientmodels.ModelsUpdateScreenshotResponse {
	return o.Payload
}

func (o *UpdateScreenshotsV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ModelsUpdateScreenshotResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateScreenshotsV2BadRequest creates a UpdateScreenshotsV2BadRequest with default headers values
func NewUpdateScreenshotsV2BadRequest() *UpdateScreenshotsV2BadRequest {
	return &UpdateScreenshotsV2BadRequest{}
}

/*UpdateScreenshotsV2BadRequest handles this case with default header values.

  Bad Request
*/
type UpdateScreenshotsV2BadRequest struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *UpdateScreenshotsV2BadRequest) Error() string {
	return fmt.Sprintf("[PUT /ugc/v2/public/namespaces/{namespace}/users/{userId}/contents/{contentId}/screenshots][%d] updateScreenshotsV2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpdateScreenshotsV2BadRequest) ToJSONString() string {
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

func (o *UpdateScreenshotsV2BadRequest) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *UpdateScreenshotsV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewUpdateScreenshotsV2Unauthorized creates a UpdateScreenshotsV2Unauthorized with default headers values
func NewUpdateScreenshotsV2Unauthorized() *UpdateScreenshotsV2Unauthorized {
	return &UpdateScreenshotsV2Unauthorized{}
}

/*UpdateScreenshotsV2Unauthorized handles this case with default header values.

  Unauthorized
*/
type UpdateScreenshotsV2Unauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *UpdateScreenshotsV2Unauthorized) Error() string {
	return fmt.Sprintf("[PUT /ugc/v2/public/namespaces/{namespace}/users/{userId}/contents/{contentId}/screenshots][%d] updateScreenshotsV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *UpdateScreenshotsV2Unauthorized) ToJSONString() string {
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

func (o *UpdateScreenshotsV2Unauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *UpdateScreenshotsV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewUpdateScreenshotsV2NotFound creates a UpdateScreenshotsV2NotFound with default headers values
func NewUpdateScreenshotsV2NotFound() *UpdateScreenshotsV2NotFound {
	return &UpdateScreenshotsV2NotFound{}
}

/*UpdateScreenshotsV2NotFound handles this case with default header values.

  Not Found
*/
type UpdateScreenshotsV2NotFound struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *UpdateScreenshotsV2NotFound) Error() string {
	return fmt.Sprintf("[PUT /ugc/v2/public/namespaces/{namespace}/users/{userId}/contents/{contentId}/screenshots][%d] updateScreenshotsV2NotFound  %+v", 404, o.ToJSONString())
}

func (o *UpdateScreenshotsV2NotFound) ToJSONString() string {
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

func (o *UpdateScreenshotsV2NotFound) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *UpdateScreenshotsV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewUpdateScreenshotsV2InternalServerError creates a UpdateScreenshotsV2InternalServerError with default headers values
func NewUpdateScreenshotsV2InternalServerError() *UpdateScreenshotsV2InternalServerError {
	return &UpdateScreenshotsV2InternalServerError{}
}

/*UpdateScreenshotsV2InternalServerError handles this case with default header values.

  Internal Server Error
*/
type UpdateScreenshotsV2InternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *UpdateScreenshotsV2InternalServerError) Error() string {
	return fmt.Sprintf("[PUT /ugc/v2/public/namespaces/{namespace}/users/{userId}/contents/{contentId}/screenshots][%d] updateScreenshotsV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *UpdateScreenshotsV2InternalServerError) ToJSONString() string {
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

func (o *UpdateScreenshotsV2InternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *UpdateScreenshotsV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
