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

// RetrieveEligibilitiesPublicIndirectReader is a Reader for the RetrieveEligibilitiesPublicIndirect structure.
type RetrieveEligibilitiesPublicIndirectReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *RetrieveEligibilitiesPublicIndirectReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewRetrieveEligibilitiesPublicIndirectOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewRetrieveEligibilitiesPublicIndirectBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /agreement/public/eligibilities/namespaces/{namespace}/countries/{countryCode}/clients/{clientId}/users/{userId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewRetrieveEligibilitiesPublicIndirectOK creates a RetrieveEligibilitiesPublicIndirectOK with default headers values
func NewRetrieveEligibilitiesPublicIndirectOK() *RetrieveEligibilitiesPublicIndirectOK {
	return &RetrieveEligibilitiesPublicIndirectOK{}
}

/*RetrieveEligibilitiesPublicIndirectOK handles this case with default header values.

  successful operation
*/
type RetrieveEligibilitiesPublicIndirectOK struct {
	Payload *legalclientmodels.RetrieveUserEligibilitiesIndirectResponse
}

func (o *RetrieveEligibilitiesPublicIndirectOK) Error() string {
	return fmt.Sprintf("[GET /agreement/public/eligibilities/namespaces/{namespace}/countries/{countryCode}/clients/{clientId}/users/{userId}][%d] retrieveEligibilitiesPublicIndirectOK  %+v", 200, o.ToJSONString())
}

func (o *RetrieveEligibilitiesPublicIndirectOK) ToJSONString() string {
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

func (o *RetrieveEligibilitiesPublicIndirectOK) GetPayload() *legalclientmodels.RetrieveUserEligibilitiesIndirectResponse {
	return o.Payload
}

func (o *RetrieveEligibilitiesPublicIndirectOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(legalclientmodels.RetrieveUserEligibilitiesIndirectResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewRetrieveEligibilitiesPublicIndirectBadRequest creates a RetrieveEligibilitiesPublicIndirectBadRequest with default headers values
func NewRetrieveEligibilitiesPublicIndirectBadRequest() *RetrieveEligibilitiesPublicIndirectBadRequest {
	return &RetrieveEligibilitiesPublicIndirectBadRequest{}
}

/*RetrieveEligibilitiesPublicIndirectBadRequest handles this case with default header values.

  <table><tr><td>NumericErrorCode</td><td>ErrorCode</td></tr><tr><td>40045</td><td>errors.net.accelbyte.platform.legal.user_id_needed</td></tr></table>
*/
type RetrieveEligibilitiesPublicIndirectBadRequest struct {
	Payload *legalclientmodels.ErrorEntity
}

func (o *RetrieveEligibilitiesPublicIndirectBadRequest) Error() string {
	return fmt.Sprintf("[GET /agreement/public/eligibilities/namespaces/{namespace}/countries/{countryCode}/clients/{clientId}/users/{userId}][%d] retrieveEligibilitiesPublicIndirectBadRequest  %+v", 400, o.ToJSONString())
}

func (o *RetrieveEligibilitiesPublicIndirectBadRequest) ToJSONString() string {
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

func (o *RetrieveEligibilitiesPublicIndirectBadRequest) GetPayload() *legalclientmodels.ErrorEntity {
	return o.Payload
}

func (o *RetrieveEligibilitiesPublicIndirectBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
