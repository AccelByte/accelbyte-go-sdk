// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package match_tickets

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/match2-sdk/pkg/match2clientmodels"
)

// MatchTicketDetailsReader is a Reader for the MatchTicketDetails structure.
type MatchTicketDetailsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *MatchTicketDetailsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewMatchTicketDetailsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewMatchTicketDetailsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewMatchTicketDetailsForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewMatchTicketDetailsNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewMatchTicketDetailsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /match2/v1/namespaces/{namespace}/match-tickets/{ticketid} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewMatchTicketDetailsOK creates a MatchTicketDetailsOK with default headers values
func NewMatchTicketDetailsOK() *MatchTicketDetailsOK {
	return &MatchTicketDetailsOK{}
}

/*MatchTicketDetailsOK handles this case with default header values.

  Created
*/
type MatchTicketDetailsOK struct {
	Payload *match2clientmodels.APIMatchTicketStatus
}

func (o *MatchTicketDetailsOK) Error() string {
	return fmt.Sprintf("[GET /match2/v1/namespaces/{namespace}/match-tickets/{ticketid}][%d] matchTicketDetailsOK  %+v", 200, o.ToJSONString())
}

func (o *MatchTicketDetailsOK) ToJSONString() string {
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

func (o *MatchTicketDetailsOK) GetPayload() *match2clientmodels.APIMatchTicketStatus {
	return o.Payload
}

func (o *MatchTicketDetailsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(match2clientmodels.APIMatchTicketStatus)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewMatchTicketDetailsUnauthorized creates a MatchTicketDetailsUnauthorized with default headers values
func NewMatchTicketDetailsUnauthorized() *MatchTicketDetailsUnauthorized {
	return &MatchTicketDetailsUnauthorized{}
}

/*MatchTicketDetailsUnauthorized handles this case with default header values.

  Unauthorized
*/
type MatchTicketDetailsUnauthorized struct {
	Payload *match2clientmodels.ResponseError
}

func (o *MatchTicketDetailsUnauthorized) Error() string {
	return fmt.Sprintf("[GET /match2/v1/namespaces/{namespace}/match-tickets/{ticketid}][%d] matchTicketDetailsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *MatchTicketDetailsUnauthorized) ToJSONString() string {
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

func (o *MatchTicketDetailsUnauthorized) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *MatchTicketDetailsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(match2clientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewMatchTicketDetailsForbidden creates a MatchTicketDetailsForbidden with default headers values
func NewMatchTicketDetailsForbidden() *MatchTicketDetailsForbidden {
	return &MatchTicketDetailsForbidden{}
}

/*MatchTicketDetailsForbidden handles this case with default header values.

  Forbidden
*/
type MatchTicketDetailsForbidden struct {
	Payload *match2clientmodels.ResponseError
}

func (o *MatchTicketDetailsForbidden) Error() string {
	return fmt.Sprintf("[GET /match2/v1/namespaces/{namespace}/match-tickets/{ticketid}][%d] matchTicketDetailsForbidden  %+v", 403, o.ToJSONString())
}

func (o *MatchTicketDetailsForbidden) ToJSONString() string {
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

func (o *MatchTicketDetailsForbidden) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *MatchTicketDetailsForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(match2clientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewMatchTicketDetailsNotFound creates a MatchTicketDetailsNotFound with default headers values
func NewMatchTicketDetailsNotFound() *MatchTicketDetailsNotFound {
	return &MatchTicketDetailsNotFound{}
}

/*MatchTicketDetailsNotFound handles this case with default header values.

  Not Found
*/
type MatchTicketDetailsNotFound struct {
	Payload *match2clientmodels.ResponseError
}

func (o *MatchTicketDetailsNotFound) Error() string {
	return fmt.Sprintf("[GET /match2/v1/namespaces/{namespace}/match-tickets/{ticketid}][%d] matchTicketDetailsNotFound  %+v", 404, o.ToJSONString())
}

func (o *MatchTicketDetailsNotFound) ToJSONString() string {
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

func (o *MatchTicketDetailsNotFound) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *MatchTicketDetailsNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(match2clientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewMatchTicketDetailsInternalServerError creates a MatchTicketDetailsInternalServerError with default headers values
func NewMatchTicketDetailsInternalServerError() *MatchTicketDetailsInternalServerError {
	return &MatchTicketDetailsInternalServerError{}
}

/*MatchTicketDetailsInternalServerError handles this case with default header values.

  Internal Server Error
*/
type MatchTicketDetailsInternalServerError struct {
	Payload *match2clientmodels.ResponseError
}

func (o *MatchTicketDetailsInternalServerError) Error() string {
	return fmt.Sprintf("[GET /match2/v1/namespaces/{namespace}/match-tickets/{ticketid}][%d] matchTicketDetailsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *MatchTicketDetailsInternalServerError) ToJSONString() string {
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

func (o *MatchTicketDetailsInternalServerError) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *MatchTicketDetailsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(match2clientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
