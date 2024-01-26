// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package profanity

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

// NewAdminProfanityDeleteParams creates a new AdminProfanityDeleteParams object
// with the default values initialized.
func NewAdminProfanityDeleteParams() *AdminProfanityDeleteParams {
	var ()
	return &AdminProfanityDeleteParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminProfanityDeleteParamsWithTimeout creates a new AdminProfanityDeleteParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminProfanityDeleteParamsWithTimeout(timeout time.Duration) *AdminProfanityDeleteParams {
	var ()
	return &AdminProfanityDeleteParams{

		timeout: timeout,
	}
}

// NewAdminProfanityDeleteParamsWithContext creates a new AdminProfanityDeleteParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminProfanityDeleteParamsWithContext(ctx context.Context) *AdminProfanityDeleteParams {
	var ()
	return &AdminProfanityDeleteParams{

		Context: ctx,
	}
}

// NewAdminProfanityDeleteParamsWithHTTPClient creates a new AdminProfanityDeleteParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminProfanityDeleteParamsWithHTTPClient(client *http.Client) *AdminProfanityDeleteParams {
	var ()
	return &AdminProfanityDeleteParams{
		HTTPClient: client,
	}
}

/*AdminProfanityDeleteParams contains all the parameters to send to the API endpoint
for the admin profanity delete operation typically these are written to a http.Request
*/
type AdminProfanityDeleteParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*ID
	  id of the dictionary

	*/
	ID string
	/*Namespace
	  namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin profanity delete params
func (o *AdminProfanityDeleteParams) WithTimeout(timeout time.Duration) *AdminProfanityDeleteParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin profanity delete params
func (o *AdminProfanityDeleteParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin profanity delete params
func (o *AdminProfanityDeleteParams) WithContext(ctx context.Context) *AdminProfanityDeleteParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin profanity delete params
func (o *AdminProfanityDeleteParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin profanity delete params
func (o *AdminProfanityDeleteParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin profanity delete params
func (o *AdminProfanityDeleteParams) WithHTTPClient(client *http.Client) *AdminProfanityDeleteParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin profanity delete params
func (o *AdminProfanityDeleteParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin profanity delete params
func (o *AdminProfanityDeleteParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminProfanityDeleteParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithID adds the idVar to the admin profanity delete params
func (o *AdminProfanityDeleteParams) WithID(idVar string) *AdminProfanityDeleteParams {
	o.SetID(idVar)
	return o
}

// SetID adds the id to the admin profanity delete params
func (o *AdminProfanityDeleteParams) SetID(idVar string) {
	o.ID = idVar
}

// WithNamespace adds the namespace to the admin profanity delete params
func (o *AdminProfanityDeleteParams) WithNamespace(namespace string) *AdminProfanityDeleteParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin profanity delete params
func (o *AdminProfanityDeleteParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminProfanityDeleteParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param id
	if err := r.SetPathParam("id", o.ID); err != nil {
		return err
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
