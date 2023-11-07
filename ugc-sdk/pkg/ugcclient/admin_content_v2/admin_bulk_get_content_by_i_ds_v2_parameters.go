// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_content_v2

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

// NewAdminBulkGetContentByIDsV2Params creates a new AdminBulkGetContentByIDsV2Params object
// with the default values initialized.
func NewAdminBulkGetContentByIDsV2Params() *AdminBulkGetContentByIDsV2Params {
	var ()
	return &AdminBulkGetContentByIDsV2Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminBulkGetContentByIDsV2ParamsWithTimeout creates a new AdminBulkGetContentByIDsV2Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminBulkGetContentByIDsV2ParamsWithTimeout(timeout time.Duration) *AdminBulkGetContentByIDsV2Params {
	var ()
	return &AdminBulkGetContentByIDsV2Params{

		timeout: timeout,
	}
}

// NewAdminBulkGetContentByIDsV2ParamsWithContext creates a new AdminBulkGetContentByIDsV2Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminBulkGetContentByIDsV2ParamsWithContext(ctx context.Context) *AdminBulkGetContentByIDsV2Params {
	var ()
	return &AdminBulkGetContentByIDsV2Params{

		Context: ctx,
	}
}

// NewAdminBulkGetContentByIDsV2ParamsWithHTTPClient creates a new AdminBulkGetContentByIDsV2Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminBulkGetContentByIDsV2ParamsWithHTTPClient(client *http.Client) *AdminBulkGetContentByIDsV2Params {
	var ()
	return &AdminBulkGetContentByIDsV2Params{
		HTTPClient: client,
	}
}

/*AdminBulkGetContentByIDsV2Params contains all the parameters to send to the API endpoint
for the admin bulk get content by i ds v2 operation typically these are written to a http.Request
*/
type AdminBulkGetContentByIDsV2Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *ugcclientmodels.ModelsAdminGetContentBulkRequest
	/*Namespace
	  namespace of the game

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin bulk get content by i ds v2 params
func (o *AdminBulkGetContentByIDsV2Params) WithTimeout(timeout time.Duration) *AdminBulkGetContentByIDsV2Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin bulk get content by i ds v2 params
func (o *AdminBulkGetContentByIDsV2Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin bulk get content by i ds v2 params
func (o *AdminBulkGetContentByIDsV2Params) WithContext(ctx context.Context) *AdminBulkGetContentByIDsV2Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin bulk get content by i ds v2 params
func (o *AdminBulkGetContentByIDsV2Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin bulk get content by i ds v2 params
func (o *AdminBulkGetContentByIDsV2Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin bulk get content by i ds v2 params
func (o *AdminBulkGetContentByIDsV2Params) WithHTTPClient(client *http.Client) *AdminBulkGetContentByIDsV2Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin bulk get content by i ds v2 params
func (o *AdminBulkGetContentByIDsV2Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin bulk get content by i ds v2 params
func (o *AdminBulkGetContentByIDsV2Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the admin bulk get content by i ds v2 params
func (o *AdminBulkGetContentByIDsV2Params) WithBody(body *ugcclientmodels.ModelsAdminGetContentBulkRequest) *AdminBulkGetContentByIDsV2Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin bulk get content by i ds v2 params
func (o *AdminBulkGetContentByIDsV2Params) SetBody(body *ugcclientmodels.ModelsAdminGetContentBulkRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the admin bulk get content by i ds v2 params
func (o *AdminBulkGetContentByIDsV2Params) WithNamespace(namespace string) *AdminBulkGetContentByIDsV2Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin bulk get content by i ds v2 params
func (o *AdminBulkGetContentByIDsV2Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminBulkGetContentByIDsV2Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
