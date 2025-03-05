// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package account_idenfifier_tag

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
)

// NewAdminCreateTagV3Params creates a new AdminCreateTagV3Params object
// with the default values initialized.
func NewAdminCreateTagV3Params() *AdminCreateTagV3Params {
	var ()
	return &AdminCreateTagV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminCreateTagV3ParamsWithTimeout creates a new AdminCreateTagV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminCreateTagV3ParamsWithTimeout(timeout time.Duration) *AdminCreateTagV3Params {
	var ()
	return &AdminCreateTagV3Params{

		timeout: timeout,
	}
}

// NewAdminCreateTagV3ParamsWithContext creates a new AdminCreateTagV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminCreateTagV3ParamsWithContext(ctx context.Context) *AdminCreateTagV3Params {
	var ()
	return &AdminCreateTagV3Params{

		Context: ctx,
	}
}

// NewAdminCreateTagV3ParamsWithHTTPClient creates a new AdminCreateTagV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminCreateTagV3ParamsWithHTTPClient(client *http.Client) *AdminCreateTagV3Params {
	var ()
	return &AdminCreateTagV3Params{
		HTTPClient: client,
	}
}

/*AdminCreateTagV3Params contains all the parameters to send to the API endpoint
for the admin create tag v3 operation typically these are written to a http.Request
*/
type AdminCreateTagV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *iamclientmodels.ModelTagCreateRequestV3
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

// WithTimeout adds the timeout to the admin create tag v3 params
func (o *AdminCreateTagV3Params) WithTimeout(timeout time.Duration) *AdminCreateTagV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin create tag v3 params
func (o *AdminCreateTagV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin create tag v3 params
func (o *AdminCreateTagV3Params) WithContext(ctx context.Context) *AdminCreateTagV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin create tag v3 params
func (o *AdminCreateTagV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin create tag v3 params
func (o *AdminCreateTagV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin create tag v3 params
func (o *AdminCreateTagV3Params) WithHTTPClient(client *http.Client) *AdminCreateTagV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin create tag v3 params
func (o *AdminCreateTagV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin create tag v3 params
func (o *AdminCreateTagV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminCreateTagV3Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the admin create tag v3 params
func (o *AdminCreateTagV3Params) WithBody(body *iamclientmodels.ModelTagCreateRequestV3) *AdminCreateTagV3Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin create tag v3 params
func (o *AdminCreateTagV3Params) SetBody(body *iamclientmodels.ModelTagCreateRequestV3) {
	o.Body = body
}

// WithNamespace adds the namespace to the admin create tag v3 params
func (o *AdminCreateTagV3Params) WithNamespace(namespace string) *AdminCreateTagV3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin create tag v3 params
func (o *AdminCreateTagV3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminCreateTagV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
