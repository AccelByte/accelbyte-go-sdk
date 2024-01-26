// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_type

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclientmodels"
)

// NewAdminCreateTypeParams creates a new AdminCreateTypeParams object
// with the default values initialized.
func NewAdminCreateTypeParams() *AdminCreateTypeParams {
	var ()
	return &AdminCreateTypeParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminCreateTypeParamsWithTimeout creates a new AdminCreateTypeParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminCreateTypeParamsWithTimeout(timeout time.Duration) *AdminCreateTypeParams {
	var ()
	return &AdminCreateTypeParams{

		timeout: timeout,
	}
}

// NewAdminCreateTypeParamsWithContext creates a new AdminCreateTypeParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminCreateTypeParamsWithContext(ctx context.Context) *AdminCreateTypeParams {
	var ()
	return &AdminCreateTypeParams{

		Context: ctx,
	}
}

// NewAdminCreateTypeParamsWithHTTPClient creates a new AdminCreateTypeParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminCreateTypeParamsWithHTTPClient(client *http.Client) *AdminCreateTypeParams {
	var ()
	return &AdminCreateTypeParams{
		HTTPClient: client,
	}
}

/*AdminCreateTypeParams contains all the parameters to send to the API endpoint
for the admin create type operation typically these are written to a http.Request
*/
type AdminCreateTypeParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *ugcclientmodels.ModelsCreateTypeRequest
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

// WithTimeout adds the timeout to the admin create type params
func (o *AdminCreateTypeParams) WithTimeout(timeout time.Duration) *AdminCreateTypeParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin create type params
func (o *AdminCreateTypeParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin create type params
func (o *AdminCreateTypeParams) WithContext(ctx context.Context) *AdminCreateTypeParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin create type params
func (o *AdminCreateTypeParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin create type params
func (o *AdminCreateTypeParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin create type params
func (o *AdminCreateTypeParams) WithHTTPClient(client *http.Client) *AdminCreateTypeParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin create type params
func (o *AdminCreateTypeParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin create type params
func (o *AdminCreateTypeParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminCreateTypeParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the admin create type params
func (o *AdminCreateTypeParams) WithBody(body *ugcclientmodels.ModelsCreateTypeRequest) *AdminCreateTypeParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin create type params
func (o *AdminCreateTypeParams) SetBody(body *ugcclientmodels.ModelsCreateTypeRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the admin create type params
func (o *AdminCreateTypeParams) WithNamespace(namespace string) *AdminCreateTypeParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin create type params
func (o *AdminCreateTypeParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminCreateTypeParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
