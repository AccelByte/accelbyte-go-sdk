// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package user_action

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclientmodels"
)

// ReportUserReader is a Reader for the ReportUser structure.
type ReportUserReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *ReportUserReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewReportUserCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewReportUserUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /basic/v1/admin/namespaces/{namespace}/actions/report returns an error %d: %s", response.Code(), string(data))
	}
}

// NewReportUserCreated creates a ReportUserCreated with default headers values
func NewReportUserCreated() *ReportUserCreated {
	return &ReportUserCreated{}
}

/*ReportUserCreated handles this case with default header values.

  successful operation
*/
type ReportUserCreated struct {
}

func (o *ReportUserCreated) Error() string {
	return fmt.Sprintf("[POST /basic/v1/admin/namespaces/{namespace}/actions/report][%d] reportUserCreated ", 201)
}

func (o *ReportUserCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewReportUserUnprocessableEntity creates a ReportUserUnprocessableEntity with default headers values
func NewReportUserUnprocessableEntity() *ReportUserUnprocessableEntity {
	return &ReportUserUnprocessableEntity{}
}

/*ReportUserUnprocessableEntity handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type ReportUserUnprocessableEntity struct {
	Payload *basicclientmodels.ValidationErrorEntity
}

func (o *ReportUserUnprocessableEntity) Error() string {
	return fmt.Sprintf("[POST /basic/v1/admin/namespaces/{namespace}/actions/report][%d] reportUserUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *ReportUserUnprocessableEntity) ToJSONString() string {
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

func (o *ReportUserUnprocessableEntity) GetPayload() *basicclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *ReportUserUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(basicclientmodels.ValidationErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
