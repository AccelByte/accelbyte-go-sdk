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

// BulkUpdateUserStatItemReader is a Reader for the BulkUpdateUserStatItem structure.
type BulkUpdateUserStatItemReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *BulkUpdateUserStatItemReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewBulkUpdateUserStatItemOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewBulkUpdateUserStatItemBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewBulkUpdateUserStatItemUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewBulkUpdateUserStatItemForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewBulkUpdateUserStatItemUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewBulkUpdateUserStatItemInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /social/v2/admin/namespaces/{namespace}/users/{userId}/statitems/value/bulk returns an error %d: %s", response.Code(), string(data))
	}
}

// NewBulkUpdateUserStatItemOK creates a BulkUpdateUserStatItemOK with default headers values
func NewBulkUpdateUserStatItemOK() *BulkUpdateUserStatItemOK {
	return &BulkUpdateUserStatItemOK{}
}

/*BulkUpdateUserStatItemOK handles this case with default header values.

  successful operation
*/
type BulkUpdateUserStatItemOK struct {
	Payload []*socialclientmodels.BulkStatOperationResult
}

func (o *BulkUpdateUserStatItemOK) Error() string {
	return fmt.Sprintf("[PUT /social/v2/admin/namespaces/{namespace}/users/{userId}/statitems/value/bulk][%d] bulkUpdateUserStatItemOK  %+v", 200, o.ToJSONString())
}

func (o *BulkUpdateUserStatItemOK) ToJSONString() string {
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

func (o *BulkUpdateUserStatItemOK) GetPayload() []*socialclientmodels.BulkStatOperationResult {
	return o.Payload
}

func (o *BulkUpdateUserStatItemOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewBulkUpdateUserStatItemBadRequest creates a BulkUpdateUserStatItemBadRequest with default headers values
func NewBulkUpdateUserStatItemBadRequest() *BulkUpdateUserStatItemBadRequest {
	return &BulkUpdateUserStatItemBadRequest{}
}

/*BulkUpdateUserStatItemBadRequest handles this case with default header values.

  Bad request
*/
type BulkUpdateUserStatItemBadRequest struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *BulkUpdateUserStatItemBadRequest) Error() string {
	return fmt.Sprintf("[PUT /social/v2/admin/namespaces/{namespace}/users/{userId}/statitems/value/bulk][%d] bulkUpdateUserStatItemBadRequest  %+v", 400, o.ToJSONString())
}

func (o *BulkUpdateUserStatItemBadRequest) ToJSONString() string {
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

func (o *BulkUpdateUserStatItemBadRequest) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *BulkUpdateUserStatItemBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewBulkUpdateUserStatItemUnauthorized creates a BulkUpdateUserStatItemUnauthorized with default headers values
func NewBulkUpdateUserStatItemUnauthorized() *BulkUpdateUserStatItemUnauthorized {
	return &BulkUpdateUserStatItemUnauthorized{}
}

/*BulkUpdateUserStatItemUnauthorized handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type BulkUpdateUserStatItemUnauthorized struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *BulkUpdateUserStatItemUnauthorized) Error() string {
	return fmt.Sprintf("[PUT /social/v2/admin/namespaces/{namespace}/users/{userId}/statitems/value/bulk][%d] bulkUpdateUserStatItemUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *BulkUpdateUserStatItemUnauthorized) ToJSONString() string {
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

func (o *BulkUpdateUserStatItemUnauthorized) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *BulkUpdateUserStatItemUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewBulkUpdateUserStatItemForbidden creates a BulkUpdateUserStatItemForbidden with default headers values
func NewBulkUpdateUserStatItemForbidden() *BulkUpdateUserStatItemForbidden {
	return &BulkUpdateUserStatItemForbidden{}
}

/*BulkUpdateUserStatItemForbidden handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type BulkUpdateUserStatItemForbidden struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *BulkUpdateUserStatItemForbidden) Error() string {
	return fmt.Sprintf("[PUT /social/v2/admin/namespaces/{namespace}/users/{userId}/statitems/value/bulk][%d] bulkUpdateUserStatItemForbidden  %+v", 403, o.ToJSONString())
}

func (o *BulkUpdateUserStatItemForbidden) ToJSONString() string {
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

func (o *BulkUpdateUserStatItemForbidden) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *BulkUpdateUserStatItemForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewBulkUpdateUserStatItemUnprocessableEntity creates a BulkUpdateUserStatItemUnprocessableEntity with default headers values
func NewBulkUpdateUserStatItemUnprocessableEntity() *BulkUpdateUserStatItemUnprocessableEntity {
	return &BulkUpdateUserStatItemUnprocessableEntity{}
}

/*BulkUpdateUserStatItemUnprocessableEntity handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type BulkUpdateUserStatItemUnprocessableEntity struct {
	Payload *socialclientmodels.ValidationErrorEntity
}

func (o *BulkUpdateUserStatItemUnprocessableEntity) Error() string {
	return fmt.Sprintf("[PUT /social/v2/admin/namespaces/{namespace}/users/{userId}/statitems/value/bulk][%d] bulkUpdateUserStatItemUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *BulkUpdateUserStatItemUnprocessableEntity) ToJSONString() string {
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

func (o *BulkUpdateUserStatItemUnprocessableEntity) GetPayload() *socialclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *BulkUpdateUserStatItemUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewBulkUpdateUserStatItemInternalServerError creates a BulkUpdateUserStatItemInternalServerError with default headers values
func NewBulkUpdateUserStatItemInternalServerError() *BulkUpdateUserStatItemInternalServerError {
	return &BulkUpdateUserStatItemInternalServerError{}
}

/*BulkUpdateUserStatItemInternalServerError handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20000</td><td>Internal server error</td></tr></table>
*/
type BulkUpdateUserStatItemInternalServerError struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *BulkUpdateUserStatItemInternalServerError) Error() string {
	return fmt.Sprintf("[PUT /social/v2/admin/namespaces/{namespace}/users/{userId}/statitems/value/bulk][%d] bulkUpdateUserStatItemInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *BulkUpdateUserStatItemInternalServerError) ToJSONString() string {
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

func (o *BulkUpdateUserStatItemInternalServerError) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *BulkUpdateUserStatItemInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
