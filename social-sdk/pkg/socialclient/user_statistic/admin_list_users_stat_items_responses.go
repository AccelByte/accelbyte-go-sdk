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

// AdminListUsersStatItemsReader is a Reader for the AdminListUsersStatItems structure.
type AdminListUsersStatItemsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminListUsersStatItemsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminListUsersStatItemsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminListUsersStatItemsBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminListUsersStatItemsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminListUsersStatItemsForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminListUsersStatItemsNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewAdminListUsersStatItemsUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminListUsersStatItemsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /social/v2/admin/namespaces/{namespace}/users/{userId}/statitems/value/bulk returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminListUsersStatItemsOK creates a AdminListUsersStatItemsOK with default headers values
func NewAdminListUsersStatItemsOK() *AdminListUsersStatItemsOK {
	return &AdminListUsersStatItemsOK{}
}

/*AdminListUsersStatItemsOK handles this case with default header values.

  successful operation
*/
type AdminListUsersStatItemsOK struct {
	Payload []*socialclientmodels.ADTOObjectForUserStatItemValue
}

func (o *AdminListUsersStatItemsOK) Error() string {
	return fmt.Sprintf("[GET /social/v2/admin/namespaces/{namespace}/users/{userId}/statitems/value/bulk][%d] adminListUsersStatItemsOK  %+v", 200, o.ToJSONString())
}

func (o *AdminListUsersStatItemsOK) ToJSONString() string {
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

func (o *AdminListUsersStatItemsOK) GetPayload() []*socialclientmodels.ADTOObjectForUserStatItemValue {
	return o.Payload
}

func (o *AdminListUsersStatItemsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminListUsersStatItemsBadRequest creates a AdminListUsersStatItemsBadRequest with default headers values
func NewAdminListUsersStatItemsBadRequest() *AdminListUsersStatItemsBadRequest {
	return &AdminListUsersStatItemsBadRequest{}
}

/*AdminListUsersStatItemsBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>12223</td><td>Invalid stat codes in namespace [{namespace}]: [{statCodes}]</td></tr></table>
*/
type AdminListUsersStatItemsBadRequest struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *AdminListUsersStatItemsBadRequest) Error() string {
	return fmt.Sprintf("[GET /social/v2/admin/namespaces/{namespace}/users/{userId}/statitems/value/bulk][%d] adminListUsersStatItemsBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminListUsersStatItemsBadRequest) ToJSONString() string {
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

func (o *AdminListUsersStatItemsBadRequest) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *AdminListUsersStatItemsBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminListUsersStatItemsUnauthorized creates a AdminListUsersStatItemsUnauthorized with default headers values
func NewAdminListUsersStatItemsUnauthorized() *AdminListUsersStatItemsUnauthorized {
	return &AdminListUsersStatItemsUnauthorized{}
}

/*AdminListUsersStatItemsUnauthorized handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminListUsersStatItemsUnauthorized struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *AdminListUsersStatItemsUnauthorized) Error() string {
	return fmt.Sprintf("[GET /social/v2/admin/namespaces/{namespace}/users/{userId}/statitems/value/bulk][%d] adminListUsersStatItemsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminListUsersStatItemsUnauthorized) ToJSONString() string {
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

func (o *AdminListUsersStatItemsUnauthorized) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *AdminListUsersStatItemsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminListUsersStatItemsForbidden creates a AdminListUsersStatItemsForbidden with default headers values
func NewAdminListUsersStatItemsForbidden() *AdminListUsersStatItemsForbidden {
	return &AdminListUsersStatItemsForbidden{}
}

/*AdminListUsersStatItemsForbidden handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type AdminListUsersStatItemsForbidden struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *AdminListUsersStatItemsForbidden) Error() string {
	return fmt.Sprintf("[GET /social/v2/admin/namespaces/{namespace}/users/{userId}/statitems/value/bulk][%d] adminListUsersStatItemsForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminListUsersStatItemsForbidden) ToJSONString() string {
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

func (o *AdminListUsersStatItemsForbidden) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *AdminListUsersStatItemsForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminListUsersStatItemsNotFound creates a AdminListUsersStatItemsNotFound with default headers values
func NewAdminListUsersStatItemsNotFound() *AdminListUsersStatItemsNotFound {
	return &AdminListUsersStatItemsNotFound{}
}

/*AdminListUsersStatItemsNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>12243</td><td>Stats cannot be found in namespace [{namespace}]</td></tr></table>
*/
type AdminListUsersStatItemsNotFound struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *AdminListUsersStatItemsNotFound) Error() string {
	return fmt.Sprintf("[GET /social/v2/admin/namespaces/{namespace}/users/{userId}/statitems/value/bulk][%d] adminListUsersStatItemsNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminListUsersStatItemsNotFound) ToJSONString() string {
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

func (o *AdminListUsersStatItemsNotFound) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *AdminListUsersStatItemsNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminListUsersStatItemsUnprocessableEntity creates a AdminListUsersStatItemsUnprocessableEntity with default headers values
func NewAdminListUsersStatItemsUnprocessableEntity() *AdminListUsersStatItemsUnprocessableEntity {
	return &AdminListUsersStatItemsUnprocessableEntity{}
}

/*AdminListUsersStatItemsUnprocessableEntity handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type AdminListUsersStatItemsUnprocessableEntity struct {
	Payload *socialclientmodels.ValidationErrorEntity
}

func (o *AdminListUsersStatItemsUnprocessableEntity) Error() string {
	return fmt.Sprintf("[GET /social/v2/admin/namespaces/{namespace}/users/{userId}/statitems/value/bulk][%d] adminListUsersStatItemsUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *AdminListUsersStatItemsUnprocessableEntity) ToJSONString() string {
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

func (o *AdminListUsersStatItemsUnprocessableEntity) GetPayload() *socialclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *AdminListUsersStatItemsUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminListUsersStatItemsInternalServerError creates a AdminListUsersStatItemsInternalServerError with default headers values
func NewAdminListUsersStatItemsInternalServerError() *AdminListUsersStatItemsInternalServerError {
	return &AdminListUsersStatItemsInternalServerError{}
}

/*AdminListUsersStatItemsInternalServerError handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20000</td><td>Internal server error</td></tr></table>
*/
type AdminListUsersStatItemsInternalServerError struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *AdminListUsersStatItemsInternalServerError) Error() string {
	return fmt.Sprintf("[GET /social/v2/admin/namespaces/{namespace}/users/{userId}/statitems/value/bulk][%d] adminListUsersStatItemsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminListUsersStatItemsInternalServerError) ToJSONString() string {
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

func (o *AdminListUsersStatItemsInternalServerError) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *AdminListUsersStatItemsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
