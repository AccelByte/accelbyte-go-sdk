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

// StopStatCycleReader is a Reader for the StopStatCycle structure.
type StopStatCycleReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *StopStatCycleReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewStopStatCycleOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewStopStatCycleUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewStopStatCycleForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewStopStatCycleNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewStopStatCycleConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewStopStatCycleInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /social/v1/admin/namespaces/{namespace}/statCycles/{cycleId}/stop returns an error %d: %s", response.Code(), string(data))
	}
}

// NewStopStatCycleOK creates a StopStatCycleOK with default headers values
func NewStopStatCycleOK() *StopStatCycleOK {
	return &StopStatCycleOK{}
}

/*StopStatCycleOK handles this case with default header values.

  successful operation
*/
type StopStatCycleOK struct {
	Payload *socialclientmodels.StatCycleInfo
}

func (o *StopStatCycleOK) Error() string {
	return fmt.Sprintf("[PUT /social/v1/admin/namespaces/{namespace}/statCycles/{cycleId}/stop][%d] stopStatCycleOK  %+v", 200, o.ToJSONString())
}

func (o *StopStatCycleOK) ToJSONString() string {
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

func (o *StopStatCycleOK) GetPayload() *socialclientmodels.StatCycleInfo {
	return o.Payload
}

func (o *StopStatCycleOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(socialclientmodels.StatCycleInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewStopStatCycleUnauthorized creates a StopStatCycleUnauthorized with default headers values
func NewStopStatCycleUnauthorized() *StopStatCycleUnauthorized {
	return &StopStatCycleUnauthorized{}
}

/*StopStatCycleUnauthorized handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20001</td><td>Unauthorized</td></tr></table>
*/
type StopStatCycleUnauthorized struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *StopStatCycleUnauthorized) Error() string {
	return fmt.Sprintf("[PUT /social/v1/admin/namespaces/{namespace}/statCycles/{cycleId}/stop][%d] stopStatCycleUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *StopStatCycleUnauthorized) ToJSONString() string {
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

func (o *StopStatCycleUnauthorized) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *StopStatCycleUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewStopStatCycleForbidden creates a StopStatCycleForbidden with default headers values
func NewStopStatCycleForbidden() *StopStatCycleForbidden {
	return &StopStatCycleForbidden{}
}

/*StopStatCycleForbidden handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type StopStatCycleForbidden struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *StopStatCycleForbidden) Error() string {
	return fmt.Sprintf("[PUT /social/v1/admin/namespaces/{namespace}/statCycles/{cycleId}/stop][%d] stopStatCycleForbidden  %+v", 403, o.ToJSONString())
}

func (o *StopStatCycleForbidden) ToJSONString() string {
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

func (o *StopStatCycleForbidden) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *StopStatCycleForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewStopStatCycleNotFound creates a StopStatCycleNotFound with default headers values
func NewStopStatCycleNotFound() *StopStatCycleNotFound {
	return &StopStatCycleNotFound{}
}

/*StopStatCycleNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>12245</td><td>Stat cycle [{id}] cannot be found in namespace [{namespace}]</td></tr></table>
*/
type StopStatCycleNotFound struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *StopStatCycleNotFound) Error() string {
	return fmt.Sprintf("[PUT /social/v1/admin/namespaces/{namespace}/statCycles/{cycleId}/stop][%d] stopStatCycleNotFound  %+v", 404, o.ToJSONString())
}

func (o *StopStatCycleNotFound) ToJSONString() string {
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

func (o *StopStatCycleNotFound) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *StopStatCycleNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewStopStatCycleConflict creates a StopStatCycleConflict with default headers values
func NewStopStatCycleConflict() *StopStatCycleConflict {
	return &StopStatCycleConflict{}
}

/*StopStatCycleConflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>12279</td><td>Invalid stat cycle status: Stat cycle [{id}], namespace [{namespace}], status [{status}]</td></tr></table>
*/
type StopStatCycleConflict struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *StopStatCycleConflict) Error() string {
	return fmt.Sprintf("[PUT /social/v1/admin/namespaces/{namespace}/statCycles/{cycleId}/stop][%d] stopStatCycleConflict  %+v", 409, o.ToJSONString())
}

func (o *StopStatCycleConflict) ToJSONString() string {
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

func (o *StopStatCycleConflict) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *StopStatCycleConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewStopStatCycleInternalServerError creates a StopStatCycleInternalServerError with default headers values
func NewStopStatCycleInternalServerError() *StopStatCycleInternalServerError {
	return &StopStatCycleInternalServerError{}
}

/*StopStatCycleInternalServerError handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20000</td><td>Internal server error</td></tr></table>
*/
type StopStatCycleInternalServerError struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *StopStatCycleInternalServerError) Error() string {
	return fmt.Sprintf("[PUT /social/v1/admin/namespaces/{namespace}/statCycles/{cycleId}/stop][%d] stopStatCycleInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *StopStatCycleInternalServerError) ToJSONString() string {
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

func (o *StopStatCycleInternalServerError) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *StopStatCycleInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
