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

// NewAdminUpdateUserContentV2Params creates a new AdminUpdateUserContentV2Params object
// with the default values initialized.
func NewAdminUpdateUserContentV2Params() *AdminUpdateUserContentV2Params {
	var ()
	return &AdminUpdateUserContentV2Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminUpdateUserContentV2ParamsWithTimeout creates a new AdminUpdateUserContentV2Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminUpdateUserContentV2ParamsWithTimeout(timeout time.Duration) *AdminUpdateUserContentV2Params {
	var ()
	return &AdminUpdateUserContentV2Params{

		timeout: timeout,
	}
}

// NewAdminUpdateUserContentV2ParamsWithContext creates a new AdminUpdateUserContentV2Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminUpdateUserContentV2ParamsWithContext(ctx context.Context) *AdminUpdateUserContentV2Params {
	var ()
	return &AdminUpdateUserContentV2Params{

		Context: ctx,
	}
}

// NewAdminUpdateUserContentV2ParamsWithHTTPClient creates a new AdminUpdateUserContentV2Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminUpdateUserContentV2ParamsWithHTTPClient(client *http.Client) *AdminUpdateUserContentV2Params {
	var ()
	return &AdminUpdateUserContentV2Params{
		HTTPClient: client,
	}
}

/*AdminUpdateUserContentV2Params contains all the parameters to send to the API endpoint
for the admin update user content v2 operation typically these are written to a http.Request
*/
type AdminUpdateUserContentV2Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *ugcclientmodels.ModelsAdminUpdateContentRequestV2
	/*ChannelID
	  channel ID

	*/
	ChannelID string
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

// WithTimeout adds the timeout to the admin update user content v2 params
func (o *AdminUpdateUserContentV2Params) WithTimeout(timeout time.Duration) *AdminUpdateUserContentV2Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin update user content v2 params
func (o *AdminUpdateUserContentV2Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin update user content v2 params
func (o *AdminUpdateUserContentV2Params) WithContext(ctx context.Context) *AdminUpdateUserContentV2Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin update user content v2 params
func (o *AdminUpdateUserContentV2Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin update user content v2 params
func (o *AdminUpdateUserContentV2Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin update user content v2 params
func (o *AdminUpdateUserContentV2Params) WithHTTPClient(client *http.Client) *AdminUpdateUserContentV2Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin update user content v2 params
func (o *AdminUpdateUserContentV2Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin update user content v2 params
func (o *AdminUpdateUserContentV2Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the admin update user content v2 params
func (o *AdminUpdateUserContentV2Params) WithBody(body *ugcclientmodels.ModelsAdminUpdateContentRequestV2) *AdminUpdateUserContentV2Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin update user content v2 params
func (o *AdminUpdateUserContentV2Params) SetBody(body *ugcclientmodels.ModelsAdminUpdateContentRequestV2) {
	o.Body = body
}

// WithChannelID adds the channelID to the admin update user content v2 params
func (o *AdminUpdateUserContentV2Params) WithChannelID(channelID string) *AdminUpdateUserContentV2Params {
	o.SetChannelID(channelID)
	return o
}

// SetChannelID adds the channelId to the admin update user content v2 params
func (o *AdminUpdateUserContentV2Params) SetChannelID(channelID string) {
	o.ChannelID = channelID
}

// WithContentID adds the contentID to the admin update user content v2 params
func (o *AdminUpdateUserContentV2Params) WithContentID(contentID string) *AdminUpdateUserContentV2Params {
	o.SetContentID(contentID)
	return o
}

// SetContentID adds the contentId to the admin update user content v2 params
func (o *AdminUpdateUserContentV2Params) SetContentID(contentID string) {
	o.ContentID = contentID
}

// WithNamespace adds the namespace to the admin update user content v2 params
func (o *AdminUpdateUserContentV2Params) WithNamespace(namespace string) *AdminUpdateUserContentV2Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin update user content v2 params
func (o *AdminUpdateUserContentV2Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the admin update user content v2 params
func (o *AdminUpdateUserContentV2Params) WithUserID(userID string) *AdminUpdateUserContentV2Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin update user content v2 params
func (o *AdminUpdateUserContentV2Params) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminUpdateUserContentV2Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param channelId
	if err := r.SetPathParam("channelId", o.ChannelID); err != nil {
		return err
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
