// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package public_like_v2

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

// UpdateContentLikeStatusV2Reader is a Reader for the UpdateContentLikeStatusV2 structure.
type UpdateContentLikeStatusV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateContentLikeStatusV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdateContentLikeStatusV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdateContentLikeStatusV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewUpdateContentLikeStatusV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewUpdateContentLikeStatusV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /ugc/v2/public/namespaces/{namespace}/contents/{contentId}/like returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateContentLikeStatusV2OK creates a UpdateContentLikeStatusV2OK with default headers values
func NewUpdateContentLikeStatusV2OK() *UpdateContentLikeStatusV2OK {
	return &UpdateContentLikeStatusV2OK{}
}

/*UpdateContentLikeStatusV2OK handles this case with default header values.

  OK
*/
type UpdateContentLikeStatusV2OK struct {
	Payload *ugcclientmodels.ModelsContentLikeResponse
}

func (o *UpdateContentLikeStatusV2OK) Error() string {
	return fmt.Sprintf("[PUT /ugc/v2/public/namespaces/{namespace}/contents/{contentId}/like][%d] updateContentLikeStatusV2OK  %+v", 200, o.ToJSONString())
}

func (o *UpdateContentLikeStatusV2OK) ToJSONString() string {
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

func (o *UpdateContentLikeStatusV2OK) GetPayload() *ugcclientmodels.ModelsContentLikeResponse {
	return o.Payload
}

func (o *UpdateContentLikeStatusV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ModelsContentLikeResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateContentLikeStatusV2BadRequest creates a UpdateContentLikeStatusV2BadRequest with default headers values
func NewUpdateContentLikeStatusV2BadRequest() *UpdateContentLikeStatusV2BadRequest {
	return &UpdateContentLikeStatusV2BadRequest{}
}

/*UpdateContentLikeStatusV2BadRequest handles this case with default header values.

  Bad Request
*/
type UpdateContentLikeStatusV2BadRequest struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *UpdateContentLikeStatusV2BadRequest) Error() string {
	return fmt.Sprintf("[PUT /ugc/v2/public/namespaces/{namespace}/contents/{contentId}/like][%d] updateContentLikeStatusV2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpdateContentLikeStatusV2BadRequest) ToJSONString() string {
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

func (o *UpdateContentLikeStatusV2BadRequest) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *UpdateContentLikeStatusV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewUpdateContentLikeStatusV2Unauthorized creates a UpdateContentLikeStatusV2Unauthorized with default headers values
func NewUpdateContentLikeStatusV2Unauthorized() *UpdateContentLikeStatusV2Unauthorized {
	return &UpdateContentLikeStatusV2Unauthorized{}
}

/*UpdateContentLikeStatusV2Unauthorized handles this case with default header values.

  Unauthorized
*/
type UpdateContentLikeStatusV2Unauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *UpdateContentLikeStatusV2Unauthorized) Error() string {
	return fmt.Sprintf("[PUT /ugc/v2/public/namespaces/{namespace}/contents/{contentId}/like][%d] updateContentLikeStatusV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *UpdateContentLikeStatusV2Unauthorized) ToJSONString() string {
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

func (o *UpdateContentLikeStatusV2Unauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *UpdateContentLikeStatusV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewUpdateContentLikeStatusV2InternalServerError creates a UpdateContentLikeStatusV2InternalServerError with default headers values
func NewUpdateContentLikeStatusV2InternalServerError() *UpdateContentLikeStatusV2InternalServerError {
	return &UpdateContentLikeStatusV2InternalServerError{}
}

/*UpdateContentLikeStatusV2InternalServerError handles this case with default header values.

  Internal Server Error
*/
type UpdateContentLikeStatusV2InternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *UpdateContentLikeStatusV2InternalServerError) Error() string {
	return fmt.Sprintf("[PUT /ugc/v2/public/namespaces/{namespace}/contents/{contentId}/like][%d] updateContentLikeStatusV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *UpdateContentLikeStatusV2InternalServerError) ToJSONString() string {
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

func (o *UpdateContentLikeStatusV2InternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *UpdateContentLikeStatusV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
