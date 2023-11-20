// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package stat_configuration

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

// ImportStatCycleReader is a Reader for the ImportStatCycle structure.
type ImportStatCycleReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *ImportStatCycleReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewImportStatCycleCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewImportStatCycleBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewImportStatCycleUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewImportStatCycleForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewImportStatCycleInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /social/v1/admin/namespaces/{namespace}/statCycles/import returns an error %d: %s", response.Code(), string(data))
	}
}

// NewImportStatCycleCreated creates a ImportStatCycleCreated with default headers values
func NewImportStatCycleCreated() *ImportStatCycleCreated {
	return &ImportStatCycleCreated{}
}

/*ImportStatCycleCreated handles this case with default header values.

  Import stat cycles successfully
*/
type ImportStatCycleCreated struct {
	Payload *socialclientmodels.StatImportInfo
}

func (o *ImportStatCycleCreated) Error() string {
	return fmt.Sprintf("[POST /social/v1/admin/namespaces/{namespace}/statCycles/import][%d] importStatCycleCreated  %+v", 201, o.ToJSONString())
}

func (o *ImportStatCycleCreated) ToJSONString() string {
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

func (o *ImportStatCycleCreated) GetPayload() *socialclientmodels.StatImportInfo {
	return o.Payload
}

func (o *ImportStatCycleCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(socialclientmodels.StatImportInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewImportStatCycleBadRequest creates a ImportStatCycleBadRequest with default headers values
func NewImportStatCycleBadRequest() *ImportStatCycleBadRequest {
	return &ImportStatCycleBadRequest{}
}

/*ImportStatCycleBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>12222</td><td>Stats data for namespace [{namespace}] is invalid</td></tr></table>
*/
type ImportStatCycleBadRequest struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *ImportStatCycleBadRequest) Error() string {
	return fmt.Sprintf("[POST /social/v1/admin/namespaces/{namespace}/statCycles/import][%d] importStatCycleBadRequest  %+v", 400, o.ToJSONString())
}

func (o *ImportStatCycleBadRequest) ToJSONString() string {
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

func (o *ImportStatCycleBadRequest) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *ImportStatCycleBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewImportStatCycleUnauthorized creates a ImportStatCycleUnauthorized with default headers values
func NewImportStatCycleUnauthorized() *ImportStatCycleUnauthorized {
	return &ImportStatCycleUnauthorized{}
}

/*ImportStatCycleUnauthorized handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20001</td><td>Unauthorized</td></tr></table>
*/
type ImportStatCycleUnauthorized struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *ImportStatCycleUnauthorized) Error() string {
	return fmt.Sprintf("[POST /social/v1/admin/namespaces/{namespace}/statCycles/import][%d] importStatCycleUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *ImportStatCycleUnauthorized) ToJSONString() string {
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

func (o *ImportStatCycleUnauthorized) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *ImportStatCycleUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewImportStatCycleForbidden creates a ImportStatCycleForbidden with default headers values
func NewImportStatCycleForbidden() *ImportStatCycleForbidden {
	return &ImportStatCycleForbidden{}
}

/*ImportStatCycleForbidden handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type ImportStatCycleForbidden struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *ImportStatCycleForbidden) Error() string {
	return fmt.Sprintf("[POST /social/v1/admin/namespaces/{namespace}/statCycles/import][%d] importStatCycleForbidden  %+v", 403, o.ToJSONString())
}

func (o *ImportStatCycleForbidden) ToJSONString() string {
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

func (o *ImportStatCycleForbidden) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *ImportStatCycleForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewImportStatCycleInternalServerError creates a ImportStatCycleInternalServerError with default headers values
func NewImportStatCycleInternalServerError() *ImportStatCycleInternalServerError {
	return &ImportStatCycleInternalServerError{}
}

/*ImportStatCycleInternalServerError handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20000</td><td>Internal server error</td></tr></table>
*/
type ImportStatCycleInternalServerError struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *ImportStatCycleInternalServerError) Error() string {
	return fmt.Sprintf("[POST /social/v1/admin/namespaces/{namespace}/statCycles/import][%d] importStatCycleInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *ImportStatCycleInternalServerError) ToJSONString() string {
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

func (o *ImportStatCycleInternalServerError) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *ImportStatCycleInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
