// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package party

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/session-sdk/pkg/sessionclientmodels"
)

// NewPublicUpdatePartyParams creates a new PublicUpdatePartyParams object
// with the default values initialized.
func NewPublicUpdatePartyParams() *PublicUpdatePartyParams {
	var ()
	return &PublicUpdatePartyParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicUpdatePartyParamsWithTimeout creates a new PublicUpdatePartyParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicUpdatePartyParamsWithTimeout(timeout time.Duration) *PublicUpdatePartyParams {
	var ()
	return &PublicUpdatePartyParams{

		timeout: timeout,
	}
}

// NewPublicUpdatePartyParamsWithContext creates a new PublicUpdatePartyParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicUpdatePartyParamsWithContext(ctx context.Context) *PublicUpdatePartyParams {
	var ()
	return &PublicUpdatePartyParams{

		Context: ctx,
	}
}

// NewPublicUpdatePartyParamsWithHTTPClient creates a new PublicUpdatePartyParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicUpdatePartyParamsWithHTTPClient(client *http.Client) *PublicUpdatePartyParams {
	var ()
	return &PublicUpdatePartyParams{
		HTTPClient: client,
	}
}

/*PublicUpdatePartyParams contains all the parameters to send to the API endpoint
for the public update party operation typically these are written to a http.Request
*/
type PublicUpdatePartyParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *sessionclientmodels.ApimodelsUpdatePartyRequest
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*PartyID
	  Party ID

	*/
	PartyID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public update party params
func (o *PublicUpdatePartyParams) WithTimeout(timeout time.Duration) *PublicUpdatePartyParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public update party params
func (o *PublicUpdatePartyParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public update party params
func (o *PublicUpdatePartyParams) WithContext(ctx context.Context) *PublicUpdatePartyParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public update party params
func (o *PublicUpdatePartyParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public update party params
func (o *PublicUpdatePartyParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public update party params
func (o *PublicUpdatePartyParams) WithHTTPClient(client *http.Client) *PublicUpdatePartyParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public update party params
func (o *PublicUpdatePartyParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public update party params
func (o *PublicUpdatePartyParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicUpdatePartyParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the public update party params
func (o *PublicUpdatePartyParams) WithBody(body *sessionclientmodels.ApimodelsUpdatePartyRequest) *PublicUpdatePartyParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the public update party params
func (o *PublicUpdatePartyParams) SetBody(body *sessionclientmodels.ApimodelsUpdatePartyRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the public update party params
func (o *PublicUpdatePartyParams) WithNamespace(namespace string) *PublicUpdatePartyParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public update party params
func (o *PublicUpdatePartyParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPartyID adds the partyID to the public update party params
func (o *PublicUpdatePartyParams) WithPartyID(partyID string) *PublicUpdatePartyParams {
	o.SetPartyID(partyID)
	return o
}

// SetPartyID adds the partyId to the public update party params
func (o *PublicUpdatePartyParams) SetPartyID(partyID string) {
	o.PartyID = partyID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicUpdatePartyParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
