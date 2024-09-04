// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package plugins

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/challenge-sdk/pkg/challengeclientmodels"
)

// NewAdminCreateAssignmentPluginParams creates a new AdminCreateAssignmentPluginParams object
// with the default values initialized.
func NewAdminCreateAssignmentPluginParams() *AdminCreateAssignmentPluginParams {
	var ()
	return &AdminCreateAssignmentPluginParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminCreateAssignmentPluginParamsWithTimeout creates a new AdminCreateAssignmentPluginParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminCreateAssignmentPluginParamsWithTimeout(timeout time.Duration) *AdminCreateAssignmentPluginParams {
	var ()
	return &AdminCreateAssignmentPluginParams{

		timeout: timeout,
	}
}

// NewAdminCreateAssignmentPluginParamsWithContext creates a new AdminCreateAssignmentPluginParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminCreateAssignmentPluginParamsWithContext(ctx context.Context) *AdminCreateAssignmentPluginParams {
	var ()
	return &AdminCreateAssignmentPluginParams{

		Context: ctx,
	}
}

// NewAdminCreateAssignmentPluginParamsWithHTTPClient creates a new AdminCreateAssignmentPluginParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminCreateAssignmentPluginParamsWithHTTPClient(client *http.Client) *AdminCreateAssignmentPluginParams {
	var ()
	return &AdminCreateAssignmentPluginParams{
		HTTPClient: client,
	}
}

/*AdminCreateAssignmentPluginParams contains all the parameters to send to the API endpoint
for the admin create assignment plugin operation typically these are written to a http.Request
*/
type AdminCreateAssignmentPluginParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *challengeclientmodels.ModelPluginAssignmentRequest
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

// WithTimeout adds the timeout to the admin create assignment plugin params
func (o *AdminCreateAssignmentPluginParams) WithTimeout(timeout time.Duration) *AdminCreateAssignmentPluginParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin create assignment plugin params
func (o *AdminCreateAssignmentPluginParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin create assignment plugin params
func (o *AdminCreateAssignmentPluginParams) WithContext(ctx context.Context) *AdminCreateAssignmentPluginParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin create assignment plugin params
func (o *AdminCreateAssignmentPluginParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin create assignment plugin params
func (o *AdminCreateAssignmentPluginParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin create assignment plugin params
func (o *AdminCreateAssignmentPluginParams) WithHTTPClient(client *http.Client) *AdminCreateAssignmentPluginParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin create assignment plugin params
func (o *AdminCreateAssignmentPluginParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin create assignment plugin params
func (o *AdminCreateAssignmentPluginParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminCreateAssignmentPluginParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the admin create assignment plugin params
func (o *AdminCreateAssignmentPluginParams) WithBody(body *challengeclientmodels.ModelPluginAssignmentRequest) *AdminCreateAssignmentPluginParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin create assignment plugin params
func (o *AdminCreateAssignmentPluginParams) SetBody(body *challengeclientmodels.ModelPluginAssignmentRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the admin create assignment plugin params
func (o *AdminCreateAssignmentPluginParams) WithNamespace(namespace string) *AdminCreateAssignmentPluginParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin create assignment plugin params
func (o *AdminCreateAssignmentPluginParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminCreateAssignmentPluginParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
