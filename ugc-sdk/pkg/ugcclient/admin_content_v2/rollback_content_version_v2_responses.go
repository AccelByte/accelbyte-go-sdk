// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_content_v2

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

// RollbackContentVersionV2Reader is a Reader for the RollbackContentVersionV2 structure.
type RollbackContentVersionV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *RollbackContentVersionV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewRollbackContentVersionV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewRollbackContentVersionV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewRollbackContentVersionV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewRollbackContentVersionV2UnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewRollbackContentVersionV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /ugc/v2/admin/namespaces/{namespace}/contents/{contentId}/rollback/{versionId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewRollbackContentVersionV2OK creates a RollbackContentVersionV2OK with default headers values
func NewRollbackContentVersionV2OK() *RollbackContentVersionV2OK {
	return &RollbackContentVersionV2OK{}
}

/*RollbackContentVersionV2OK handles this case with default header values.

  OK
*/
type RollbackContentVersionV2OK struct {
	Payload *ugcclientmodels.ModelsContentDownloadResponse
}

func (o *RollbackContentVersionV2OK) Error() string {
	return fmt.Sprintf("[PUT /ugc/v2/admin/namespaces/{namespace}/contents/{contentId}/rollback/{versionId}][%d] rollbackContentVersionV2OK  %+v", 200, o.ToJSONString())
}

func (o *RollbackContentVersionV2OK) ToJSONString() string {
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

func (o *RollbackContentVersionV2OK) GetPayload() *ugcclientmodels.ModelsContentDownloadResponse {
	return o.Payload
}

func (o *RollbackContentVersionV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ModelsContentDownloadResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewRollbackContentVersionV2Unauthorized creates a RollbackContentVersionV2Unauthorized with default headers values
func NewRollbackContentVersionV2Unauthorized() *RollbackContentVersionV2Unauthorized {
	return &RollbackContentVersionV2Unauthorized{}
}

/*RollbackContentVersionV2Unauthorized handles this case with default header values.

  Unauthorized
*/
type RollbackContentVersionV2Unauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *RollbackContentVersionV2Unauthorized) Error() string {
	return fmt.Sprintf("[PUT /ugc/v2/admin/namespaces/{namespace}/contents/{contentId}/rollback/{versionId}][%d] rollbackContentVersionV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *RollbackContentVersionV2Unauthorized) ToJSONString() string {
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

func (o *RollbackContentVersionV2Unauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *RollbackContentVersionV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewRollbackContentVersionV2NotFound creates a RollbackContentVersionV2NotFound with default headers values
func NewRollbackContentVersionV2NotFound() *RollbackContentVersionV2NotFound {
	return &RollbackContentVersionV2NotFound{}
}

/*RollbackContentVersionV2NotFound handles this case with default header values.

  Not Found
*/
type RollbackContentVersionV2NotFound struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *RollbackContentVersionV2NotFound) Error() string {
	return fmt.Sprintf("[PUT /ugc/v2/admin/namespaces/{namespace}/contents/{contentId}/rollback/{versionId}][%d] rollbackContentVersionV2NotFound  %+v", 404, o.ToJSONString())
}

func (o *RollbackContentVersionV2NotFound) ToJSONString() string {
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

func (o *RollbackContentVersionV2NotFound) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *RollbackContentVersionV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewRollbackContentVersionV2UnprocessableEntity creates a RollbackContentVersionV2UnprocessableEntity with default headers values
func NewRollbackContentVersionV2UnprocessableEntity() *RollbackContentVersionV2UnprocessableEntity {
	return &RollbackContentVersionV2UnprocessableEntity{}
}

/*RollbackContentVersionV2UnprocessableEntity handles this case with default header values.

  Unprocessable Entity
*/
type RollbackContentVersionV2UnprocessableEntity struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *RollbackContentVersionV2UnprocessableEntity) Error() string {
	return fmt.Sprintf("[PUT /ugc/v2/admin/namespaces/{namespace}/contents/{contentId}/rollback/{versionId}][%d] rollbackContentVersionV2UnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *RollbackContentVersionV2UnprocessableEntity) ToJSONString() string {
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

func (o *RollbackContentVersionV2UnprocessableEntity) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *RollbackContentVersionV2UnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewRollbackContentVersionV2InternalServerError creates a RollbackContentVersionV2InternalServerError with default headers values
func NewRollbackContentVersionV2InternalServerError() *RollbackContentVersionV2InternalServerError {
	return &RollbackContentVersionV2InternalServerError{}
}

/*RollbackContentVersionV2InternalServerError handles this case with default header values.

  Internal Server Error
*/
type RollbackContentVersionV2InternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *RollbackContentVersionV2InternalServerError) Error() string {
	return fmt.Sprintf("[PUT /ugc/v2/admin/namespaces/{namespace}/contents/{contentId}/rollback/{versionId}][%d] rollbackContentVersionV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *RollbackContentVersionV2InternalServerError) ToJSONString() string {
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

func (o *RollbackContentVersionV2InternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *RollbackContentVersionV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
