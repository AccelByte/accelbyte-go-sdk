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

// UpdateUserStatItemValueReader is a Reader for the UpdateUserStatItemValue structure.
type UpdateUserStatItemValueReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateUserStatItemValueReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdateUserStatItemValueOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdateUserStatItemValueBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUpdateUserStatItemValueNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewUpdateUserStatItemValueConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewUpdateUserStatItemValueUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /social/v2/admin/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateUserStatItemValueOK creates a UpdateUserStatItemValueOK with default headers values
func NewUpdateUserStatItemValueOK() *UpdateUserStatItemValueOK {
	return &UpdateUserStatItemValueOK{}
}

/*UpdateUserStatItemValueOK handles this case with default header values.

  successful operation
*/
type UpdateUserStatItemValueOK struct {
	Payload *socialclientmodels.StatItemIncResult
}

func (o *UpdateUserStatItemValueOK) Error() string {
	return fmt.Sprintf("[PUT /social/v2/admin/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value][%d] updateUserStatItemValueOK  %+v", 200, o.ToJSONString())
}

func (o *UpdateUserStatItemValueOK) ToJSONString() string {
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

func (o *UpdateUserStatItemValueOK) GetPayload() *socialclientmodels.StatItemIncResult {
	return o.Payload
}

func (o *UpdateUserStatItemValueOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(socialclientmodels.StatItemIncResult)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateUserStatItemValueBadRequest creates a UpdateUserStatItemValueBadRequest with default headers values
func NewUpdateUserStatItemValueBadRequest() *UpdateUserStatItemValueBadRequest {
	return &UpdateUserStatItemValueBadRequest{}
}

/*UpdateUserStatItemValueBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>12221</td><td>Invalid stat operator, expect [{expected}] but actual [{actual}]</td></tr></table>
*/
type UpdateUserStatItemValueBadRequest struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *UpdateUserStatItemValueBadRequest) Error() string {
	return fmt.Sprintf("[PUT /social/v2/admin/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value][%d] updateUserStatItemValueBadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpdateUserStatItemValueBadRequest) ToJSONString() string {
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

func (o *UpdateUserStatItemValueBadRequest) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdateUserStatItemValueBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewUpdateUserStatItemValueNotFound creates a UpdateUserStatItemValueNotFound with default headers values
func NewUpdateUserStatItemValueNotFound() *UpdateUserStatItemValueNotFound {
	return &UpdateUserStatItemValueNotFound{}
}

/*UpdateUserStatItemValueNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>12241</td><td>Stat [{statCode}] cannot be found in namespace [{namespace}]</td></tr></table>
*/
type UpdateUserStatItemValueNotFound struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *UpdateUserStatItemValueNotFound) Error() string {
	return fmt.Sprintf("[PUT /social/v2/admin/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value][%d] updateUserStatItemValueNotFound  %+v", 404, o.ToJSONString())
}

func (o *UpdateUserStatItemValueNotFound) ToJSONString() string {
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

func (o *UpdateUserStatItemValueNotFound) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdateUserStatItemValueNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewUpdateUserStatItemValueConflict creates a UpdateUserStatItemValueConflict with default headers values
func NewUpdateUserStatItemValueConflict() *UpdateUserStatItemValueConflict {
	return &UpdateUserStatItemValueConflict{}
}

/*UpdateUserStatItemValueConflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>12273</td><td>Stat [{statCode}] is not decreasable</td></tr><tr><td>12275</td><td>[{action}] value: [{value}] of stat [{statCode}] is out of range while minimum [{minimum}] and maximum [{maximum}] in namespace [{namespace}]</td></tr></table>
*/
type UpdateUserStatItemValueConflict struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *UpdateUserStatItemValueConflict) Error() string {
	return fmt.Sprintf("[PUT /social/v2/admin/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value][%d] updateUserStatItemValueConflict  %+v", 409, o.ToJSONString())
}

func (o *UpdateUserStatItemValueConflict) ToJSONString() string {
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

func (o *UpdateUserStatItemValueConflict) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdateUserStatItemValueConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewUpdateUserStatItemValueUnprocessableEntity creates a UpdateUserStatItemValueUnprocessableEntity with default headers values
func NewUpdateUserStatItemValueUnprocessableEntity() *UpdateUserStatItemValueUnprocessableEntity {
	return &UpdateUserStatItemValueUnprocessableEntity{}
}

/*UpdateUserStatItemValueUnprocessableEntity handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type UpdateUserStatItemValueUnprocessableEntity struct {
	Payload *socialclientmodels.ValidationErrorEntity
}

func (o *UpdateUserStatItemValueUnprocessableEntity) Error() string {
	return fmt.Sprintf("[PUT /social/v2/admin/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value][%d] updateUserStatItemValueUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *UpdateUserStatItemValueUnprocessableEntity) ToJSONString() string {
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

func (o *UpdateUserStatItemValueUnprocessableEntity) GetPayload() *socialclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *UpdateUserStatItemValueUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
