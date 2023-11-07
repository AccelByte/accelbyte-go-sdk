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

// ImportStatsReader is a Reader for the ImportStats structure.
type ImportStatsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *ImportStatsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewImportStatsCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewImportStatsBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewImportStatsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewImportStatsForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewImportStatsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /social/v1/admin/namespaces/{namespace}/stats/import returns an error %d: %s", response.Code(), string(data))
	}
}

// NewImportStatsCreated creates a ImportStatsCreated with default headers values
func NewImportStatsCreated() *ImportStatsCreated {
	return &ImportStatsCreated{}
}

/*ImportStatsCreated handles this case with default header values.

  Import stats successfully
*/
type ImportStatsCreated struct {
	Payload *socialclientmodels.StatImportInfo
}

func (o *ImportStatsCreated) Error() string {
	return fmt.Sprintf("[POST /social/v1/admin/namespaces/{namespace}/stats/import][%d] importStatsCreated  %+v", 201, o.ToJSONString())
}

func (o *ImportStatsCreated) ToJSONString() string {
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

func (o *ImportStatsCreated) GetPayload() *socialclientmodels.StatImportInfo {
	return o.Payload
}

func (o *ImportStatsCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewImportStatsBadRequest creates a ImportStatsBadRequest with default headers values
func NewImportStatsBadRequest() *ImportStatsBadRequest {
	return &ImportStatsBadRequest{}
}

/*ImportStatsBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>12222</td><td>Stats data for namespace [{namespace}] is invalid</td></tr></table>
*/
type ImportStatsBadRequest struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *ImportStatsBadRequest) Error() string {
	return fmt.Sprintf("[POST /social/v1/admin/namespaces/{namespace}/stats/import][%d] importStatsBadRequest  %+v", 400, o.ToJSONString())
}

func (o *ImportStatsBadRequest) ToJSONString() string {
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

func (o *ImportStatsBadRequest) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *ImportStatsBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewImportStatsUnauthorized creates a ImportStatsUnauthorized with default headers values
func NewImportStatsUnauthorized() *ImportStatsUnauthorized {
	return &ImportStatsUnauthorized{}
}

/*ImportStatsUnauthorized handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20001</td><td>Unauthorized</td></tr></table>
*/
type ImportStatsUnauthorized struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *ImportStatsUnauthorized) Error() string {
	return fmt.Sprintf("[POST /social/v1/admin/namespaces/{namespace}/stats/import][%d] importStatsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *ImportStatsUnauthorized) ToJSONString() string {
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

func (o *ImportStatsUnauthorized) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *ImportStatsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewImportStatsForbidden creates a ImportStatsForbidden with default headers values
func NewImportStatsForbidden() *ImportStatsForbidden {
	return &ImportStatsForbidden{}
}

/*ImportStatsForbidden handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type ImportStatsForbidden struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *ImportStatsForbidden) Error() string {
	return fmt.Sprintf("[POST /social/v1/admin/namespaces/{namespace}/stats/import][%d] importStatsForbidden  %+v", 403, o.ToJSONString())
}

func (o *ImportStatsForbidden) ToJSONString() string {
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

func (o *ImportStatsForbidden) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *ImportStatsForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewImportStatsInternalServerError creates a ImportStatsInternalServerError with default headers values
func NewImportStatsInternalServerError() *ImportStatsInternalServerError {
	return &ImportStatsInternalServerError{}
}

/*ImportStatsInternalServerError handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20000</td><td>Internal server error</td></tr></table>
*/
type ImportStatsInternalServerError struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *ImportStatsInternalServerError) Error() string {
	return fmt.Sprintf("[POST /social/v1/admin/namespaces/{namespace}/stats/import][%d] importStatsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *ImportStatsInternalServerError) ToJSONString() string {
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

func (o *ImportStatsInternalServerError) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *ImportStatsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
