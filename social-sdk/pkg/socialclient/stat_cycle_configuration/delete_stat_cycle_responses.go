// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package stat_cycle_configuration

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

// DeleteStatCycleReader is a Reader for the DeleteStatCycle structure.
type DeleteStatCycleReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteStatCycleReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteStatCycleNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewDeleteStatCycleUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewDeleteStatCycleForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDeleteStatCycleNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewDeleteStatCycleInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /social/v1/admin/namespaces/{namespace}/statCycles/{cycleId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteStatCycleNoContent creates a DeleteStatCycleNoContent with default headers values
func NewDeleteStatCycleNoContent() *DeleteStatCycleNoContent {
	return &DeleteStatCycleNoContent{}
}

/*DeleteStatCycleNoContent handles this case with default header values.

  Successful operation
*/
type DeleteStatCycleNoContent struct {
}

func (o *DeleteStatCycleNoContent) Error() string {
	return fmt.Sprintf("[DELETE /social/v1/admin/namespaces/{namespace}/statCycles/{cycleId}][%d] deleteStatCycleNoContent ", 204)
}

func (o *DeleteStatCycleNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeleteStatCycleUnauthorized creates a DeleteStatCycleUnauthorized with default headers values
func NewDeleteStatCycleUnauthorized() *DeleteStatCycleUnauthorized {
	return &DeleteStatCycleUnauthorized{}
}

/*DeleteStatCycleUnauthorized handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20001</td><td>Unauthorized</td></tr></table>
*/
type DeleteStatCycleUnauthorized struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *DeleteStatCycleUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /social/v1/admin/namespaces/{namespace}/statCycles/{cycleId}][%d] deleteStatCycleUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *DeleteStatCycleUnauthorized) ToJSONString() string {
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

func (o *DeleteStatCycleUnauthorized) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *DeleteStatCycleUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewDeleteStatCycleForbidden creates a DeleteStatCycleForbidden with default headers values
func NewDeleteStatCycleForbidden() *DeleteStatCycleForbidden {
	return &DeleteStatCycleForbidden{}
}

/*DeleteStatCycleForbidden handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type DeleteStatCycleForbidden struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *DeleteStatCycleForbidden) Error() string {
	return fmt.Sprintf("[DELETE /social/v1/admin/namespaces/{namespace}/statCycles/{cycleId}][%d] deleteStatCycleForbidden  %+v", 403, o.ToJSONString())
}

func (o *DeleteStatCycleForbidden) ToJSONString() string {
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

func (o *DeleteStatCycleForbidden) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *DeleteStatCycleForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewDeleteStatCycleNotFound creates a DeleteStatCycleNotFound with default headers values
func NewDeleteStatCycleNotFound() *DeleteStatCycleNotFound {
	return &DeleteStatCycleNotFound{}
}

/*DeleteStatCycleNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>12245</td><td>Stat cycle [{id}] cannot be found in namespace [{namespace}]</td></tr></table>
*/
type DeleteStatCycleNotFound struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *DeleteStatCycleNotFound) Error() string {
	return fmt.Sprintf("[DELETE /social/v1/admin/namespaces/{namespace}/statCycles/{cycleId}][%d] deleteStatCycleNotFound  %+v", 404, o.ToJSONString())
}

func (o *DeleteStatCycleNotFound) ToJSONString() string {
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

func (o *DeleteStatCycleNotFound) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *DeleteStatCycleNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewDeleteStatCycleInternalServerError creates a DeleteStatCycleInternalServerError with default headers values
func NewDeleteStatCycleInternalServerError() *DeleteStatCycleInternalServerError {
	return &DeleteStatCycleInternalServerError{}
}

/*DeleteStatCycleInternalServerError handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20000</td><td>Internal server error</td></tr></table>
*/
type DeleteStatCycleInternalServerError struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *DeleteStatCycleInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /social/v1/admin/namespaces/{namespace}/statCycles/{cycleId}][%d] deleteStatCycleInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *DeleteStatCycleInternalServerError) ToJSONString() string {
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

func (o *DeleteStatCycleInternalServerError) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *DeleteStatCycleInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
