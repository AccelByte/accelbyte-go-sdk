// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_reasons

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/reporting-sdk/pkg/reportingclientmodels"
)

// GetReasonGroupReader is a Reader for the GetReasonGroup structure.
type GetReasonGroupReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetReasonGroupReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetReasonGroupOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetReasonGroupNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetReasonGroupInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /reporting/v1/admin/namespaces/{namespace}/reasonGroups/{groupId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetReasonGroupOK creates a GetReasonGroupOK with default headers values
func NewGetReasonGroupOK() *GetReasonGroupOK {
	return &GetReasonGroupOK{}
}

/*GetReasonGroupOK handles this case with default header values.


 */
type GetReasonGroupOK struct {
	Payload *reportingclientmodels.RestapiReasonGroupResponse
}

func (o *GetReasonGroupOK) Error() string {
	return fmt.Sprintf("[GET /reporting/v1/admin/namespaces/{namespace}/reasonGroups/{groupId}][%d] getReasonGroupOK  %+v", 200, o.ToJSONString())
}

func (o *GetReasonGroupOK) ToJSONString() string {
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

func (o *GetReasonGroupOK) GetPayload() *reportingclientmodels.RestapiReasonGroupResponse {
	return o.Payload
}

func (o *GetReasonGroupOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(reportingclientmodels.RestapiReasonGroupResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetReasonGroupNotFound creates a GetReasonGroupNotFound with default headers values
func NewGetReasonGroupNotFound() *GetReasonGroupNotFound {
	return &GetReasonGroupNotFound{}
}

/*GetReasonGroupNotFound handles this case with default header values.


 */
type GetReasonGroupNotFound struct {
	Payload *reportingclientmodels.RestapiErrorResponse
}

func (o *GetReasonGroupNotFound) Error() string {
	return fmt.Sprintf("[GET /reporting/v1/admin/namespaces/{namespace}/reasonGroups/{groupId}][%d] getReasonGroupNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetReasonGroupNotFound) ToJSONString() string {
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

func (o *GetReasonGroupNotFound) GetPayload() *reportingclientmodels.RestapiErrorResponse {
	return o.Payload
}

func (o *GetReasonGroupNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(reportingclientmodels.RestapiErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetReasonGroupInternalServerError creates a GetReasonGroupInternalServerError with default headers values
func NewGetReasonGroupInternalServerError() *GetReasonGroupInternalServerError {
	return &GetReasonGroupInternalServerError{}
}

/*GetReasonGroupInternalServerError handles this case with default header values.


 */
type GetReasonGroupInternalServerError struct {
	Payload *reportingclientmodels.RestapiErrorResponse
}

func (o *GetReasonGroupInternalServerError) Error() string {
	return fmt.Sprintf("[GET /reporting/v1/admin/namespaces/{namespace}/reasonGroups/{groupId}][%d] getReasonGroupInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetReasonGroupInternalServerError) ToJSONString() string {
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

func (o *GetReasonGroupInternalServerError) GetPayload() *reportingclientmodels.RestapiErrorResponse {
	return o.Payload
}

func (o *GetReasonGroupInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(reportingclientmodels.RestapiErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
