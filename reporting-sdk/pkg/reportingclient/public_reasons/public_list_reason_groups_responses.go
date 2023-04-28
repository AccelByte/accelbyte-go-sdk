// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package public_reasons

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

// PublicListReasonGroupsReader is a Reader for the PublicListReasonGroups structure.
type PublicListReasonGroupsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicListReasonGroupsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicListReasonGroupsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicListReasonGroupsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /reporting/v1/public/namespaces/{namespace}/reasonGroups returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicListReasonGroupsOK creates a PublicListReasonGroupsOK with default headers values
func NewPublicListReasonGroupsOK() *PublicListReasonGroupsOK {
	return &PublicListReasonGroupsOK{}
}

/*PublicListReasonGroupsOK handles this case with default header values.


 */
type PublicListReasonGroupsOK struct {
	Payload *reportingclientmodels.RestapiReasonGroupListResponse
}

func (o *PublicListReasonGroupsOK) Error() string {
	return fmt.Sprintf("[GET /reporting/v1/public/namespaces/{namespace}/reasonGroups][%d] publicListReasonGroupsOK  %+v", 200, o.ToJSONString())
}

func (o *PublicListReasonGroupsOK) ToJSONString() string {
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

func (o *PublicListReasonGroupsOK) GetPayload() *reportingclientmodels.RestapiReasonGroupListResponse {
	return o.Payload
}

func (o *PublicListReasonGroupsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(reportingclientmodels.RestapiReasonGroupListResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicListReasonGroupsInternalServerError creates a PublicListReasonGroupsInternalServerError with default headers values
func NewPublicListReasonGroupsInternalServerError() *PublicListReasonGroupsInternalServerError {
	return &PublicListReasonGroupsInternalServerError{}
}

/*PublicListReasonGroupsInternalServerError handles this case with default header values.


 */
type PublicListReasonGroupsInternalServerError struct {
	Payload *reportingclientmodels.RestapiErrorResponse
}

func (o *PublicListReasonGroupsInternalServerError) Error() string {
	return fmt.Sprintf("[GET /reporting/v1/public/namespaces/{namespace}/reasonGroups][%d] publicListReasonGroupsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicListReasonGroupsInternalServerError) ToJSONString() string {
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

func (o *PublicListReasonGroupsInternalServerError) GetPayload() *reportingclientmodels.RestapiErrorResponse {
	return o.Payload
}

func (o *PublicListReasonGroupsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
