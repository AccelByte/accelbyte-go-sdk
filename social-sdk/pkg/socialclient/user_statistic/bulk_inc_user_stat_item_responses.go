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

// BulkIncUserStatItemReader is a Reader for the BulkIncUserStatItem structure.
type BulkIncUserStatItemReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *BulkIncUserStatItemReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewBulkIncUserStatItemOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewBulkIncUserStatItemBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewBulkIncUserStatItemUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewBulkIncUserStatItemForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewBulkIncUserStatItemUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewBulkIncUserStatItemInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /social/v1/admin/namespaces/{namespace}/statitems/value/bulk returns an error %d: %s", response.Code(), string(data))
	}
}

// NewBulkIncUserStatItemOK creates a BulkIncUserStatItemOK with default headers values
func NewBulkIncUserStatItemOK() *BulkIncUserStatItemOK {
	return &BulkIncUserStatItemOK{}
}

/*BulkIncUserStatItemOK handles this case with default header values.

  successful operation
*/
type BulkIncUserStatItemOK struct {
	Payload []*socialclientmodels.BulkStatOperationResult
}

func (o *BulkIncUserStatItemOK) Error() string {
	return fmt.Sprintf("[PUT /social/v1/admin/namespaces/{namespace}/statitems/value/bulk][%d] bulkIncUserStatItemOK  %+v", 200, o.ToJSONString())
}

func (o *BulkIncUserStatItemOK) ToJSONString() string {
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

func (o *BulkIncUserStatItemOK) GetPayload() []*socialclientmodels.BulkStatOperationResult {
	return o.Payload
}

func (o *BulkIncUserStatItemOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewBulkIncUserStatItemBadRequest creates a BulkIncUserStatItemBadRequest with default headers values
func NewBulkIncUserStatItemBadRequest() *BulkIncUserStatItemBadRequest {
	return &BulkIncUserStatItemBadRequest{}
}

/*BulkIncUserStatItemBadRequest handles this case with default header values.

  Bad request
*/
type BulkIncUserStatItemBadRequest struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *BulkIncUserStatItemBadRequest) Error() string {
	return fmt.Sprintf("[PUT /social/v1/admin/namespaces/{namespace}/statitems/value/bulk][%d] bulkIncUserStatItemBadRequest  %+v", 400, o.ToJSONString())
}

func (o *BulkIncUserStatItemBadRequest) ToJSONString() string {
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

func (o *BulkIncUserStatItemBadRequest) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *BulkIncUserStatItemBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewBulkIncUserStatItemUnauthorized creates a BulkIncUserStatItemUnauthorized with default headers values
func NewBulkIncUserStatItemUnauthorized() *BulkIncUserStatItemUnauthorized {
	return &BulkIncUserStatItemUnauthorized{}
}

/*BulkIncUserStatItemUnauthorized handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20001</td><td>Unauthorized</td></tr></table>
*/
type BulkIncUserStatItemUnauthorized struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *BulkIncUserStatItemUnauthorized) Error() string {
	return fmt.Sprintf("[PUT /social/v1/admin/namespaces/{namespace}/statitems/value/bulk][%d] bulkIncUserStatItemUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *BulkIncUserStatItemUnauthorized) ToJSONString() string {
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

func (o *BulkIncUserStatItemUnauthorized) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *BulkIncUserStatItemUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewBulkIncUserStatItemForbidden creates a BulkIncUserStatItemForbidden with default headers values
func NewBulkIncUserStatItemForbidden() *BulkIncUserStatItemForbidden {
	return &BulkIncUserStatItemForbidden{}
}

/*BulkIncUserStatItemForbidden handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type BulkIncUserStatItemForbidden struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *BulkIncUserStatItemForbidden) Error() string {
	return fmt.Sprintf("[PUT /social/v1/admin/namespaces/{namespace}/statitems/value/bulk][%d] bulkIncUserStatItemForbidden  %+v", 403, o.ToJSONString())
}

func (o *BulkIncUserStatItemForbidden) ToJSONString() string {
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

func (o *BulkIncUserStatItemForbidden) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *BulkIncUserStatItemForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewBulkIncUserStatItemUnprocessableEntity creates a BulkIncUserStatItemUnprocessableEntity with default headers values
func NewBulkIncUserStatItemUnprocessableEntity() *BulkIncUserStatItemUnprocessableEntity {
	return &BulkIncUserStatItemUnprocessableEntity{}
}

/*BulkIncUserStatItemUnprocessableEntity handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type BulkIncUserStatItemUnprocessableEntity struct {
	Payload *socialclientmodels.ValidationErrorEntity
}

func (o *BulkIncUserStatItemUnprocessableEntity) Error() string {
	return fmt.Sprintf("[PUT /social/v1/admin/namespaces/{namespace}/statitems/value/bulk][%d] bulkIncUserStatItemUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *BulkIncUserStatItemUnprocessableEntity) ToJSONString() string {
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

func (o *BulkIncUserStatItemUnprocessableEntity) GetPayload() *socialclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *BulkIncUserStatItemUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewBulkIncUserStatItemInternalServerError creates a BulkIncUserStatItemInternalServerError with default headers values
func NewBulkIncUserStatItemInternalServerError() *BulkIncUserStatItemInternalServerError {
	return &BulkIncUserStatItemInternalServerError{}
}

/*BulkIncUserStatItemInternalServerError handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20000</td><td>Internal server error</td></tr></table>
*/
type BulkIncUserStatItemInternalServerError struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *BulkIncUserStatItemInternalServerError) Error() string {
	return fmt.Sprintf("[PUT /social/v1/admin/namespaces/{namespace}/statitems/value/bulk][%d] bulkIncUserStatItemInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *BulkIncUserStatItemInternalServerError) ToJSONString() string {
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

func (o *BulkIncUserStatItemInternalServerError) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *BulkIncUserStatItemInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
