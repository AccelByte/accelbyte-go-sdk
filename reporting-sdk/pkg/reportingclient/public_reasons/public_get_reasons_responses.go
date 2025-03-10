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

// PublicGetReasonsReader is a Reader for the PublicGetReasons structure.
type PublicGetReasonsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGetReasonsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGetReasonsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicGetReasonsNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicGetReasonsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /reporting/v1/public/namespaces/{namespace}/reasons returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGetReasonsOK creates a PublicGetReasonsOK with default headers values
func NewPublicGetReasonsOK() *PublicGetReasonsOK {
	return &PublicGetReasonsOK{}
}

/*PublicGetReasonsOK handles this case with default header values.

  OK
*/
type PublicGetReasonsOK struct {
	Payload *reportingclientmodels.RestapiPublicReasonListResponse
}

func (o *PublicGetReasonsOK) Error() string {
	return fmt.Sprintf("[GET /reporting/v1/public/namespaces/{namespace}/reasons][%d] publicGetReasonsOK  %+v", 200, o.ToJSONString())
}

func (o *PublicGetReasonsOK) ToJSONString() string {
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

func (o *PublicGetReasonsOK) GetPayload() *reportingclientmodels.RestapiPublicReasonListResponse {
	return o.Payload
}

func (o *PublicGetReasonsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(reportingclientmodels.RestapiPublicReasonListResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetReasonsNotFound creates a PublicGetReasonsNotFound with default headers values
func NewPublicGetReasonsNotFound() *PublicGetReasonsNotFound {
	return &PublicGetReasonsNotFound{}
}

/*PublicGetReasonsNotFound handles this case with default header values.


 */
type PublicGetReasonsNotFound struct {
	Payload *reportingclientmodels.RestapiErrorResponse
}

func (o *PublicGetReasonsNotFound) Error() string {
	return fmt.Sprintf("[GET /reporting/v1/public/namespaces/{namespace}/reasons][%d] publicGetReasonsNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicGetReasonsNotFound) ToJSONString() string {
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

func (o *PublicGetReasonsNotFound) GetPayload() *reportingclientmodels.RestapiErrorResponse {
	return o.Payload
}

func (o *PublicGetReasonsNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGetReasonsInternalServerError creates a PublicGetReasonsInternalServerError with default headers values
func NewPublicGetReasonsInternalServerError() *PublicGetReasonsInternalServerError {
	return &PublicGetReasonsInternalServerError{}
}

/*PublicGetReasonsInternalServerError handles this case with default header values.


 */
type PublicGetReasonsInternalServerError struct {
	Payload *reportingclientmodels.RestapiErrorResponse
}

func (o *PublicGetReasonsInternalServerError) Error() string {
	return fmt.Sprintf("[GET /reporting/v1/public/namespaces/{namespace}/reasons][%d] publicGetReasonsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicGetReasonsInternalServerError) ToJSONString() string {
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

func (o *PublicGetReasonsInternalServerError) GetPayload() *reportingclientmodels.RestapiErrorResponse {
	return o.Payload
}

func (o *PublicGetReasonsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
