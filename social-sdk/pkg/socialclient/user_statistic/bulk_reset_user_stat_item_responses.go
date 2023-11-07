// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package user_statistic

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclientmodels"
)

// BulkResetUserStatItemReader is a Reader for the BulkResetUserStatItem structure.
type BulkResetUserStatItemReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *BulkResetUserStatItemReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewBulkResetUserStatItemOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewBulkResetUserStatItemBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewBulkResetUserStatItemUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewBulkResetUserStatItemForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewBulkResetUserStatItemUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewBulkResetUserStatItemInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /social/v1/admin/namespaces/{namespace}/statitems/value/reset/bulk returns an error %d: %s", response.Code(), string(data))
	}
}

// NewBulkResetUserStatItemOK creates a BulkResetUserStatItemOK with default headers values
func NewBulkResetUserStatItemOK() *BulkResetUserStatItemOK {
	return &BulkResetUserStatItemOK{}
}

/*BulkResetUserStatItemOK handles this case with default header values.

  successful operation
*/
type BulkResetUserStatItemOK struct {
	Payload []*socialclientmodels.BulkStatOperationResult
}

func (o *BulkResetUserStatItemOK) Error() string {
	return fmt.Sprintf("[PUT /social/v1/admin/namespaces/{namespace}/statitems/value/reset/bulk][%d] bulkResetUserStatItemOK  %+v", 200, o.ToJSONString())
}

func (o *BulkResetUserStatItemOK) ToJSONString() string {
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

func (o *BulkResetUserStatItemOK) GetPayload() []*socialclientmodels.BulkStatOperationResult {
	return o.Payload
}

func (o *BulkResetUserStatItemOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	// response payload
	if err := consumer.Consume(response.Body(), &o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewBulkResetUserStatItemBadRequest creates a BulkResetUserStatItemBadRequest with default headers values
func NewBulkResetUserStatItemBadRequest() *BulkResetUserStatItemBadRequest {
	return &BulkResetUserStatItemBadRequest{}
}

/*BulkResetUserStatItemBadRequest handles this case with default header values.

  Bad request
*/
type BulkResetUserStatItemBadRequest struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *BulkResetUserStatItemBadRequest) Error() string {
	return fmt.Sprintf("[PUT /social/v1/admin/namespaces/{namespace}/statitems/value/reset/bulk][%d] bulkResetUserStatItemBadRequest  %+v", 400, o.ToJSONString())
}

func (o *BulkResetUserStatItemBadRequest) ToJSONString() string {
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

func (o *BulkResetUserStatItemBadRequest) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *BulkResetUserStatItemBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(socialclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewBulkResetUserStatItemUnauthorized creates a BulkResetUserStatItemUnauthorized with default headers values
func NewBulkResetUserStatItemUnauthorized() *BulkResetUserStatItemUnauthorized {
	return &BulkResetUserStatItemUnauthorized{}
}

/*BulkResetUserStatItemUnauthorized handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20001</td><td>Unauthorized</td></tr></table>
*/
type BulkResetUserStatItemUnauthorized struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *BulkResetUserStatItemUnauthorized) Error() string {
	return fmt.Sprintf("[PUT /social/v1/admin/namespaces/{namespace}/statitems/value/reset/bulk][%d] bulkResetUserStatItemUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *BulkResetUserStatItemUnauthorized) ToJSONString() string {
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

func (o *BulkResetUserStatItemUnauthorized) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *BulkResetUserStatItemUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(socialclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewBulkResetUserStatItemForbidden creates a BulkResetUserStatItemForbidden with default headers values
func NewBulkResetUserStatItemForbidden() *BulkResetUserStatItemForbidden {
	return &BulkResetUserStatItemForbidden{}
}

/*BulkResetUserStatItemForbidden handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type BulkResetUserStatItemForbidden struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *BulkResetUserStatItemForbidden) Error() string {
	return fmt.Sprintf("[PUT /social/v1/admin/namespaces/{namespace}/statitems/value/reset/bulk][%d] bulkResetUserStatItemForbidden  %+v", 403, o.ToJSONString())
}

func (o *BulkResetUserStatItemForbidden) ToJSONString() string {
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

func (o *BulkResetUserStatItemForbidden) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *BulkResetUserStatItemForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(socialclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewBulkResetUserStatItemUnprocessableEntity creates a BulkResetUserStatItemUnprocessableEntity with default headers values
func NewBulkResetUserStatItemUnprocessableEntity() *BulkResetUserStatItemUnprocessableEntity {
	return &BulkResetUserStatItemUnprocessableEntity{}
}

/*BulkResetUserStatItemUnprocessableEntity handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type BulkResetUserStatItemUnprocessableEntity struct {
	Payload *socialclientmodels.ValidationErrorEntity
}

func (o *BulkResetUserStatItemUnprocessableEntity) Error() string {
	return fmt.Sprintf("[PUT /social/v1/admin/namespaces/{namespace}/statitems/value/reset/bulk][%d] bulkResetUserStatItemUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *BulkResetUserStatItemUnprocessableEntity) ToJSONString() string {
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

func (o *BulkResetUserStatItemUnprocessableEntity) GetPayload() *socialclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *BulkResetUserStatItemUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(socialclientmodels.ValidationErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewBulkResetUserStatItemInternalServerError creates a BulkResetUserStatItemInternalServerError with default headers values
func NewBulkResetUserStatItemInternalServerError() *BulkResetUserStatItemInternalServerError {
	return &BulkResetUserStatItemInternalServerError{}
}

/*BulkResetUserStatItemInternalServerError handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20000</td><td>Internal server error</td></tr></table>
*/
type BulkResetUserStatItemInternalServerError struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *BulkResetUserStatItemInternalServerError) Error() string {
	return fmt.Sprintf("[PUT /social/v1/admin/namespaces/{namespace}/statitems/value/reset/bulk][%d] bulkResetUserStatItemInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *BulkResetUserStatItemInternalServerError) ToJSONString() string {
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

func (o *BulkResetUserStatItemInternalServerError) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *BulkResetUserStatItemInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(socialclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
