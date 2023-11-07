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

// NewAdminUpdateContentHideStatusV2Params creates a new AdminUpdateContentHideStatusV2Params object
// with the default values initialized.
func NewAdminUpdateContentHideStatusV2Params() *AdminUpdateContentHideStatusV2Params {
	var ()
	return &AdminUpdateContentHideStatusV2Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminUpdateContentHideStatusV2ParamsWithTimeout creates a new AdminUpdateContentHideStatusV2Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminUpdateContentHideStatusV2ParamsWithTimeout(timeout time.Duration) *AdminUpdateContentHideStatusV2Params {
	var ()
	return &AdminUpdateContentHideStatusV2Params{

		timeout: timeout,
	}
}

// NewAdminUpdateContentHideStatusV2ParamsWithContext creates a new AdminUpdateContentHideStatusV2Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminUpdateContentHideStatusV2ParamsWithContext(ctx context.Context) *AdminUpdateContentHideStatusV2Params {
	var ()
	return &AdminUpdateContentHideStatusV2Params{

		Context: ctx,
	}
}

// NewAdminUpdateContentHideStatusV2ParamsWithHTTPClient creates a new AdminUpdateContentHideStatusV2Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminUpdateContentHideStatusV2ParamsWithHTTPClient(client *http.Client) *AdminUpdateContentHideStatusV2Params {
	var ()
	return &AdminUpdateContentHideStatusV2Params{
		HTTPClient: client,
	}
}

/*AdminUpdateContentHideStatusV2Params contains all the parameters to send to the API endpoint
for the admin update content hide status v2 operation typically these are written to a http.Request
*/
type AdminUpdateContentHideStatusV2Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *ugcclientmodels.ModelsHideContentRequest
	/*ContentID
	  content ID

	*/
	ContentID string
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*UserID
	  user ID

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin update content hide status v2 params
func (o *AdminUpdateContentHideStatusV2Params) WithTimeout(timeout time.Duration) *AdminUpdateContentHideStatusV2Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin update content hide status v2 params
func (o *AdminUpdateContentHideStatusV2Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin update content hide status v2 params
func (o *AdminUpdateContentHideStatusV2Params) WithContext(ctx context.Context) *AdminUpdateContentHideStatusV2Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin update content hide status v2 params
func (o *AdminUpdateContentHideStatusV2Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin update content hide status v2 params
func (o *AdminUpdateContentHideStatusV2Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin update content hide status v2 params
func (o *AdminUpdateContentHideStatusV2Params) WithHTTPClient(client *http.Client) *AdminUpdateContentHideStatusV2Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin update content hide status v2 params
func (o *AdminUpdateContentHideStatusV2Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin update content hide status v2 params
func (o *AdminUpdateContentHideStatusV2Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the admin update content hide status v2 params
func (o *AdminUpdateContentHideStatusV2Params) WithBody(body *ugcclientmodels.ModelsHideContentRequest) *AdminUpdateContentHideStatusV2Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin update content hide status v2 params
func (o *AdminUpdateContentHideStatusV2Params) SetBody(body *ugcclientmodels.ModelsHideContentRequest) {
	o.Body = body
}

// WithContentID adds the contentID to the admin update content hide status v2 params
func (o *AdminUpdateContentHideStatusV2Params) WithContentID(contentID string) *AdminUpdateContentHideStatusV2Params {
	o.SetContentID(contentID)
	return o
}

// SetContentID adds the contentId to the admin update content hide status v2 params
func (o *AdminUpdateContentHideStatusV2Params) SetContentID(contentID string) {
	o.ContentID = contentID
}

// WithNamespace adds the namespace to the admin update content hide status v2 params
func (o *AdminUpdateContentHideStatusV2Params) WithNamespace(namespace string) *AdminUpdateContentHideStatusV2Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin update content hide status v2 params
func (o *AdminUpdateContentHideStatusV2Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the admin update content hide status v2 params
func (o *AdminUpdateContentHideStatusV2Params) WithUserID(userID string) *AdminUpdateContentHideStatusV2Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin update content hide status v2 params
func (o *AdminUpdateContentHideStatusV2Params) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminUpdateContentHideStatusV2Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param contentId
	if err := r.SetPathParam("contentId", o.ContentID); err != nil {
		return err
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param userId
	if err := r.SetPathParam("userId", o.UserID); err != nil {
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
