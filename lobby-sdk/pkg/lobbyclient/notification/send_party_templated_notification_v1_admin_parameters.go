// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package notification

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclientmodels"
)

// NewSendPartyTemplatedNotificationV1AdminParams creates a new SendPartyTemplatedNotificationV1AdminParams object
// with the default values initialized.
func NewSendPartyTemplatedNotificationV1AdminParams() *SendPartyTemplatedNotificationV1AdminParams {
	var ()
	return &SendPartyTemplatedNotificationV1AdminParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewSendPartyTemplatedNotificationV1AdminParamsWithTimeout creates a new SendPartyTemplatedNotificationV1AdminParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewSendPartyTemplatedNotificationV1AdminParamsWithTimeout(timeout time.Duration) *SendPartyTemplatedNotificationV1AdminParams {
	var ()
	return &SendPartyTemplatedNotificationV1AdminParams{

		timeout: timeout,
	}
}

// NewSendPartyTemplatedNotificationV1AdminParamsWithContext creates a new SendPartyTemplatedNotificationV1AdminParams object
// with the default values initialized, and the ability to set a context for a request
func NewSendPartyTemplatedNotificationV1AdminParamsWithContext(ctx context.Context) *SendPartyTemplatedNotificationV1AdminParams {
	var ()
	return &SendPartyTemplatedNotificationV1AdminParams{

		Context: ctx,
	}
}

// NewSendPartyTemplatedNotificationV1AdminParamsWithHTTPClient creates a new SendPartyTemplatedNotificationV1AdminParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewSendPartyTemplatedNotificationV1AdminParamsWithHTTPClient(client *http.Client) *SendPartyTemplatedNotificationV1AdminParams {
	var ()
	return &SendPartyTemplatedNotificationV1AdminParams{
		HTTPClient: client,
	}
}

/*SendPartyTemplatedNotificationV1AdminParams contains all the parameters to send to the API endpoint
for the send party templated notification v1 admin operation typically these are written to a http.Request
*/
type SendPartyTemplatedNotificationV1AdminParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *lobbyclientmodels.ModelNotificationWithTemplateRequestV1
	/*Namespace
	  namespace

	*/
	Namespace string
	/*PartyID
	  party ID

	*/
	PartyID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the send party templated notification v1 admin params
func (o *SendPartyTemplatedNotificationV1AdminParams) WithTimeout(timeout time.Duration) *SendPartyTemplatedNotificationV1AdminParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the send party templated notification v1 admin params
func (o *SendPartyTemplatedNotificationV1AdminParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the send party templated notification v1 admin params
func (o *SendPartyTemplatedNotificationV1AdminParams) WithContext(ctx context.Context) *SendPartyTemplatedNotificationV1AdminParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the send party templated notification v1 admin params
func (o *SendPartyTemplatedNotificationV1AdminParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the send party templated notification v1 admin params
func (o *SendPartyTemplatedNotificationV1AdminParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the send party templated notification v1 admin params
func (o *SendPartyTemplatedNotificationV1AdminParams) WithHTTPClient(client *http.Client) *SendPartyTemplatedNotificationV1AdminParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the send party templated notification v1 admin params
func (o *SendPartyTemplatedNotificationV1AdminParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the send party templated notification v1 admin params
func (o *SendPartyTemplatedNotificationV1AdminParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *SendPartyTemplatedNotificationV1AdminParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the send party templated notification v1 admin params
func (o *SendPartyTemplatedNotificationV1AdminParams) WithBody(body *lobbyclientmodels.ModelNotificationWithTemplateRequestV1) *SendPartyTemplatedNotificationV1AdminParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the send party templated notification v1 admin params
func (o *SendPartyTemplatedNotificationV1AdminParams) SetBody(body *lobbyclientmodels.ModelNotificationWithTemplateRequestV1) {
	o.Body = body
}

// WithNamespace adds the namespace to the send party templated notification v1 admin params
func (o *SendPartyTemplatedNotificationV1AdminParams) WithNamespace(namespace string) *SendPartyTemplatedNotificationV1AdminParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the send party templated notification v1 admin params
func (o *SendPartyTemplatedNotificationV1AdminParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPartyID adds the partyID to the send party templated notification v1 admin params
func (o *SendPartyTemplatedNotificationV1AdminParams) WithPartyID(partyID string) *SendPartyTemplatedNotificationV1AdminParams {
	o.SetPartyID(partyID)
	return o
}

// SetPartyID adds the partyId to the send party templated notification v1 admin params
func (o *SendPartyTemplatedNotificationV1AdminParams) SetPartyID(partyID string) {
	o.PartyID = partyID
}

// WriteToRequest writes these params to a swagger request
func (o *SendPartyTemplatedNotificationV1AdminParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param partyId
	if err := r.SetPathParam("partyId", o.PartyID); err != nil {
		return err
	}

	// setting the default header value
	if err := r.SetHeaderParam("User-Agent", utils.UserAgentGen()); err != nil {
		return err
	}

	if err := r.SetHeaderParam("X-Amzn-Trace-Id", utils.AmazonTraceIDGen()); err != nil {
		return err
	}

	if o.XFlightId == nil {
		if err := r.SetHeaderParam("X-Flight-Id", utils.GetDefaultFlightID().Value); err != nil {
			return err
		}
	} else {
		if err := r.SetHeaderParam("X-Flight-Id", *o.XFlightId); err != nil {
			return err
		}
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
