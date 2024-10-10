// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package season

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/seasonpass-sdk/pkg/seasonpassclientmodels"
)

// ResetUserSeasonReader is a Reader for the ResetUserSeason structure.
type ResetUserSeasonReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *ResetUserSeasonReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewResetUserSeasonNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewResetUserSeasonBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/current/reset returns an error %d: %s", response.Code(), string(data))
	}
}

// NewResetUserSeasonNoContent creates a ResetUserSeasonNoContent with default headers values
func NewResetUserSeasonNoContent() *ResetUserSeasonNoContent {
	return &ResetUserSeasonNoContent{}
}

/*ResetUserSeasonNoContent handles this case with default header values.

  OK
*/
type ResetUserSeasonNoContent struct {
}

func (o *ResetUserSeasonNoContent) Error() string {
	return fmt.Sprintf("[DELETE /seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/current/reset][%d] resetUserSeasonNoContent ", 204)
}

func (o *ResetUserSeasonNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewResetUserSeasonBadRequest creates a ResetUserSeasonBadRequest with default headers values
func NewResetUserSeasonBadRequest() *ResetUserSeasonBadRequest {
	return &ResetUserSeasonBadRequest{}
}

/*ResetUserSeasonBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20026</td><td>publisher namespace not allowed</td></tr></table>
*/
type ResetUserSeasonBadRequest struct {
	Payload *seasonpassclientmodels.ErrorEntity
}

func (o *ResetUserSeasonBadRequest) Error() string {
	return fmt.Sprintf("[DELETE /seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/current/reset][%d] resetUserSeasonBadRequest  %+v", 400, o.ToJSONString())
}

func (o *ResetUserSeasonBadRequest) ToJSONString() string {
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

func (o *ResetUserSeasonBadRequest) GetPayload() *seasonpassclientmodels.ErrorEntity {
	return o.Payload
}

func (o *ResetUserSeasonBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(seasonpassclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
