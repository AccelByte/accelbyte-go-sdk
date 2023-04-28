// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package eligibilities

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclientmodels"
)

// RetrieveEligibilitiesPublicReader is a Reader for the RetrieveEligibilitiesPublic structure.
type RetrieveEligibilitiesPublicReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *RetrieveEligibilitiesPublicReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewRetrieveEligibilitiesPublicOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewRetrieveEligibilitiesPublicBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewRetrieveEligibilitiesPublicNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /agreement/public/eligibilities/namespaces/{namespace} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewRetrieveEligibilitiesPublicOK creates a RetrieveEligibilitiesPublicOK with default headers values
func NewRetrieveEligibilitiesPublicOK() *RetrieveEligibilitiesPublicOK {
	return &RetrieveEligibilitiesPublicOK{}
}

/*RetrieveEligibilitiesPublicOK handles this case with default header values.

  successful operation
*/
type RetrieveEligibilitiesPublicOK struct {
	Payload []*legalclientmodels.RetrieveUserEligibilitiesResponse
}

func (o *RetrieveEligibilitiesPublicOK) Error() string {
	return fmt.Sprintf("[GET /agreement/public/eligibilities/namespaces/{namespace}][%d] retrieveEligibilitiesPublicOK  %+v", 200, o.ToJSONString())
}

func (o *RetrieveEligibilitiesPublicOK) ToJSONString() string {
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

func (o *RetrieveEligibilitiesPublicOK) GetPayload() []*legalclientmodels.RetrieveUserEligibilitiesResponse {
	return o.Payload
}

func (o *RetrieveEligibilitiesPublicOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	// response payload
	if err := consumer.Consume(response.Body(), &o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewRetrieveEligibilitiesPublicBadRequest creates a RetrieveEligibilitiesPublicBadRequest with default headers values
func NewRetrieveEligibilitiesPublicBadRequest() *RetrieveEligibilitiesPublicBadRequest {
	return &RetrieveEligibilitiesPublicBadRequest{}
}

/*RetrieveEligibilitiesPublicBadRequest handles this case with default header values.

  <table><tr><td>NumericErrorCode</td><td>ErrorCode</td></tr><tr><td>40045</td><td>errors.net.accelbyte.platform.legal.user_id_needed</td></tr></table>
*/
type RetrieveEligibilitiesPublicBadRequest struct {
	Payload *legalclientmodels.ErrorEntity
}

func (o *RetrieveEligibilitiesPublicBadRequest) Error() string {
	return fmt.Sprintf("[GET /agreement/public/eligibilities/namespaces/{namespace}][%d] retrieveEligibilitiesPublicBadRequest  %+v", 400, o.ToJSONString())
}

func (o *RetrieveEligibilitiesPublicBadRequest) ToJSONString() string {
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

func (o *RetrieveEligibilitiesPublicBadRequest) GetPayload() *legalclientmodels.ErrorEntity {
	return o.Payload
}

func (o *RetrieveEligibilitiesPublicBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(legalclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewRetrieveEligibilitiesPublicNotFound creates a RetrieveEligibilitiesPublicNotFound with default headers values
func NewRetrieveEligibilitiesPublicNotFound() *RetrieveEligibilitiesPublicNotFound {
	return &RetrieveEligibilitiesPublicNotFound{}
}

/*RetrieveEligibilitiesPublicNotFound handles this case with default header values.

  <table><tr><td>NumericErrorCode</td><td>ErrorCode</td></tr><tr><td>40041</td><td>errors.net.accelbyte.platform.legal.policy_not_found</td></tr></table>
*/
type RetrieveEligibilitiesPublicNotFound struct {
	Payload *legalclientmodels.ErrorEntity
}

func (o *RetrieveEligibilitiesPublicNotFound) Error() string {
	return fmt.Sprintf("[GET /agreement/public/eligibilities/namespaces/{namespace}][%d] retrieveEligibilitiesPublicNotFound  %+v", 404, o.ToJSONString())
}

func (o *RetrieveEligibilitiesPublicNotFound) ToJSONString() string {
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

func (o *RetrieveEligibilitiesPublicNotFound) GetPayload() *legalclientmodels.ErrorEntity {
	return o.Payload
}

func (o *RetrieveEligibilitiesPublicNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(legalclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
