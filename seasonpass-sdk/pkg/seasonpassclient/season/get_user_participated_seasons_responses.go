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

// GetUserParticipatedSeasonsReader is a Reader for the GetUserParticipatedSeasons structure.
type GetUserParticipatedSeasonsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetUserParticipatedSeasonsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetUserParticipatedSeasonsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetUserParticipatedSeasonsBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetUserParticipatedSeasonsOK creates a GetUserParticipatedSeasonsOK with default headers values
func NewGetUserParticipatedSeasonsOK() *GetUserParticipatedSeasonsOK {
	return &GetUserParticipatedSeasonsOK{}
}

/*GetUserParticipatedSeasonsOK handles this case with default header values.

  successful operation
*/
type GetUserParticipatedSeasonsOK struct {
	Payload *seasonpassclientmodels.ListUserSeasonInfoPagingSlicedResult
}

func (o *GetUserParticipatedSeasonsOK) Error() string {
	return fmt.Sprintf("[GET /seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons][%d] getUserParticipatedSeasonsOK  %+v", 200, o.ToJSONString())
}

func (o *GetUserParticipatedSeasonsOK) ToJSONString() string {
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

func (o *GetUserParticipatedSeasonsOK) GetPayload() *seasonpassclientmodels.ListUserSeasonInfoPagingSlicedResult {
	return o.Payload
}

func (o *GetUserParticipatedSeasonsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(seasonpassclientmodels.ListUserSeasonInfoPagingSlicedResult)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetUserParticipatedSeasonsBadRequest creates a GetUserParticipatedSeasonsBadRequest with default headers values
func NewGetUserParticipatedSeasonsBadRequest() *GetUserParticipatedSeasonsBadRequest {
	return &GetUserParticipatedSeasonsBadRequest{}
}

/*GetUserParticipatedSeasonsBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20026</td><td>publisher namespace not allowed</td></tr></table>
*/
type GetUserParticipatedSeasonsBadRequest struct {
	Payload *seasonpassclientmodels.ErrorEntity
}

func (o *GetUserParticipatedSeasonsBadRequest) Error() string {
	return fmt.Sprintf("[GET /seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons][%d] getUserParticipatedSeasonsBadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetUserParticipatedSeasonsBadRequest) ToJSONString() string {
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

func (o *GetUserParticipatedSeasonsBadRequest) GetPayload() *seasonpassclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetUserParticipatedSeasonsBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
