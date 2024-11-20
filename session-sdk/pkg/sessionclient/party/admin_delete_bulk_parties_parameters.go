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

// NewAdminDeleteBulkPartiesParams creates a new AdminDeleteBulkPartiesParams object
// with the default values initialized.
func NewAdminDeleteBulkPartiesParams() *AdminDeleteBulkPartiesParams {
	var ()
	return &AdminDeleteBulkPartiesParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminDeleteBulkPartiesParamsWithTimeout creates a new AdminDeleteBulkPartiesParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminDeleteBulkPartiesParamsWithTimeout(timeout time.Duration) *AdminDeleteBulkPartiesParams {
	var ()
	return &AdminDeleteBulkPartiesParams{

		timeout: timeout,
	}
}

// NewAdminDeleteBulkPartiesParamsWithContext creates a new AdminDeleteBulkPartiesParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminDeleteBulkPartiesParamsWithContext(ctx context.Context) *AdminDeleteBulkPartiesParams {
	var ()
	return &AdminDeleteBulkPartiesParams{

		Context: ctx,
	}
}

// NewAdminDeleteBulkPartiesParamsWithHTTPClient creates a new AdminDeleteBulkPartiesParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminDeleteBulkPartiesParamsWithHTTPClient(client *http.Client) *AdminDeleteBulkPartiesParams {
	var ()
	return &AdminDeleteBulkPartiesParams{
		HTTPClient: client,
	}
}

/*AdminDeleteBulkPartiesParams contains all the parameters to send to the API endpoint
for the admin delete bulk parties operation typically these are written to a http.Request
*/
type AdminDeleteBulkPartiesParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *sessionclientmodels.ApimodelsDeleteBulkPartySessionRequest
	/*Namespace
	  namespace of the game

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin delete bulk parties params
func (o *AdminDeleteBulkPartiesParams) WithTimeout(timeout time.Duration) *AdminDeleteBulkPartiesParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin delete bulk parties params
func (o *AdminDeleteBulkPartiesParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin delete bulk parties params
func (o *AdminDeleteBulkPartiesParams) WithContext(ctx context.Context) *AdminDeleteBulkPartiesParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin delete bulk parties params
func (o *AdminDeleteBulkPartiesParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin delete bulk parties params
func (o *AdminDeleteBulkPartiesParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin delete bulk parties params
func (o *AdminDeleteBulkPartiesParams) WithHTTPClient(client *http.Client) *AdminDeleteBulkPartiesParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin delete bulk parties params
func (o *AdminDeleteBulkPartiesParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin delete bulk parties params
func (o *AdminDeleteBulkPartiesParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminDeleteBulkPartiesParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the admin delete bulk parties params
func (o *AdminDeleteBulkPartiesParams) WithBody(body *sessionclientmodels.ApimodelsDeleteBulkPartySessionRequest) *AdminDeleteBulkPartiesParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin delete bulk parties params
func (o *AdminDeleteBulkPartiesParams) SetBody(body *sessionclientmodels.ApimodelsDeleteBulkPartySessionRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the admin delete bulk parties params
func (o *AdminDeleteBulkPartiesParams) WithNamespace(namespace string) *AdminDeleteBulkPartiesParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin delete bulk parties params
func (o *AdminDeleteBulkPartiesParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminDeleteBulkPartiesParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
