// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package ticket_v1

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
)

// NewRefreshTicketParams creates a new RefreshTicketParams object
// with the default values initialized.
func NewRefreshTicketParams() *RefreshTicketParams {
	var ()
	return &RefreshTicketParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewRefreshTicketParamsWithTimeout creates a new RefreshTicketParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewRefreshTicketParamsWithTimeout(timeout time.Duration) *RefreshTicketParams {
	var ()
	return &RefreshTicketParams{

		timeout: timeout,
	}
}

// NewRefreshTicketParamsWithContext creates a new RefreshTicketParams object
// with the default values initialized, and the ability to set a context for a request
func NewRefreshTicketParamsWithContext(ctx context.Context) *RefreshTicketParams {
	var ()
	return &RefreshTicketParams{

		Context: ctx,
	}
}

// NewRefreshTicketParamsWithHTTPClient creates a new RefreshTicketParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewRefreshTicketParamsWithHTTPClient(client *http.Client) *RefreshTicketParams {
	var ()
	return &RefreshTicketParams{
		HTTPClient: client,
	}
}

/*RefreshTicketParams contains all the parameters to send to the API endpoint
for the refresh ticket operation typically these are written to a http.Request
*/
type RefreshTicketParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the refresh ticket params
func (o *RefreshTicketParams) WithTimeout(timeout time.Duration) *RefreshTicketParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the refresh ticket params
func (o *RefreshTicketParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the refresh ticket params
func (o *RefreshTicketParams) WithContext(ctx context.Context) *RefreshTicketParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the refresh ticket params
func (o *RefreshTicketParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the refresh ticket params
func (o *RefreshTicketParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the refresh ticket params
func (o *RefreshTicketParams) WithHTTPClient(client *http.Client) *RefreshTicketParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the refresh ticket params
func (o *RefreshTicketParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the refresh ticket params
func (o *RefreshTicketParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *RefreshTicketParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the refresh ticket params
func (o *RefreshTicketParams) WithNamespace(namespace string) *RefreshTicketParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the refresh ticket params
func (o *RefreshTicketParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *RefreshTicketParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
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
